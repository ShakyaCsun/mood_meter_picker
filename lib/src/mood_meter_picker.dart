import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:mood_meter_picker/mood_meter_picker.dart';
import 'package:mood_meter_picker/src/bloc/mood_meter_bloc.dart';
import 'package:mood_meter_picker/src/data/extensions.dart';
import 'package:mood_meter_picker/src/data/user_customizable_settings.dart';
import 'package:mood_meter_picker/src/widgets/animated_overflow_box_align.dart';
import 'package:mood_meter_picker/src/widgets/my_hit_test_target.dart';

typedef MoodPieceSelectionCallback = void Function(MoodPiece moodPiece);

class MoodMeterPicker extends StatelessWidget {
  const MoodMeterPicker({
    super.key,
    this.initialMoodQuadrant,
    this.initialMoodPiece,
    this.onlyShowSelected = false,
    this.selectedTextStyle,
    this.unselectedTextStyle,
    required this.onMoodSelectionChanged,
  });

  final MoodPiece? initialMoodPiece;
  final MoodQuadrant? initialMoodQuadrant;
  final MoodPieceSelectionCallback onMoodSelectionChanged;

  /// [TextStyle] for unselected [MoodPiece] tile.
  ///
  /// Defaults to [Theme.of(context).textTheme.labelSmall]
  final TextStyle? unselectedTextStyle;

  /// [TextStyle] for unselected [MoodPiece] tile.
  ///
  /// Defaults to [Theme.of(context).textTheme.bodyLarge]
  final TextStyle? selectedTextStyle;

  /// Only show mood name label on selected [MoodPiece] tile.
  final bool onlyShowSelected;

  @override
  Widget build(BuildContext context) {
    final userSettings = UserCustomizableSettings(
      onlyShowSelected: onlyShowSelected,
      selectedTextStyle: selectedTextStyle,
      unselectedTextStyle: unselectedTextStyle,
    );

    return Portal(
      child: RepositoryProvider.value(
        value: userSettings,
        child: BlocProvider(
          create: (context) {
            final moodPiece = initialMoodPiece;
            if (moodPiece != null) {
              return MoodMeterBloc(moodQuadrant: moodPiece.moodQuadrant)
                ..add(MoodPieceSelected(moodPiece: moodPiece));
            }
            return MoodMeterBloc(moodQuadrant: initialMoodQuadrant);
          },
          child: _MoodPickerView(
            onMoodSelectionChanged: onMoodSelectionChanged,
          ),
        ),
      ),
    );
  }
}

class _MoodPickerView extends StatelessWidget {
  const _MoodPickerView({
    required this.onMoodSelectionChanged,
  });

  final MoodPieceSelectionCallback onMoodSelectionChanged;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MoodMeterBloc, MoodMeterState>(
      listener: (context, state) {
        if (state is MoodMeterCompleteState) {
          onMoodSelectionChanged(state.selectedMoodPiece);
        }
      },
      buildWhen: (previous, current) {
        return previous.selectedMoodQuadrant != current.selectedMoodQuadrant;
      },
      builder: (context, state) {
        final alignment = state.selectedMoodQuadrant.alignment;

        return LayoutBuilder(
          builder: (context, constraints) {
            final totalWidth = constraints.maxWidth * 1.84;
            final totalHeight = constraints.maxHeight * 1.84;

            return _MoodPickerBody(
              totalHeight: totalHeight,
              totalWidth: totalWidth,
              alignment: alignment,
            );
          },
        );
      },
    );
  }
}

class _MoodPickerBody extends StatelessWidget {
  const _MoodPickerBody({
    required this.totalHeight,
    required this.totalWidth,
    required this.alignment,
  })  : pieceHeight = totalHeight / EnergyLevel.values.length,
        pieceWidth = totalWidth / PleasantnessLevel.values.length;

  final double totalHeight;
  final double totalWidth;
  final Alignment alignment;
  final double pieceHeight;
  final double pieceWidth;

  ///
  void _onPointerLetGo(BuildContext context) {
    context.read<MoodMeterBloc>().state.whenOrNull(
      complete: (selectedMoodPiece, _) {
        context.read<MoodMeterBloc>().add(
              MoodPieceSelected(moodPiece: selectedMoodPiece),
            );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOverflowBoxAlign(
      minHeight: totalHeight,
      minWidth: totalWidth,
      maxHeight: totalHeight,
      maxWidth: totalWidth,
      alignment: alignment,
      duration: const Duration(milliseconds: 300),
      child: Listener(
        onPointerMove: (event) {
          // Ref: https://stackoverflow.com/questions/50639652/how-to-swipe-drag-2-or-more-buttons-in-a-grid-of-buttons-using-flutter
          final box = context.findRenderObject() as RenderBox?;
          final result = BoxHitTestResult();
          final local = box?.globalToLocal(event.position);

          if (local != null) {
            if (box?.hitTest(result, position: local) ?? false) {
              for (final hit in result.path) {
                // temporary variable so that the [is] allows
                // access of [moodPiece]
                final target = hit.target;

                if (target is MyHitTestTargetObject) {
                  context.read<MoodMeterBloc>().add(
                        MoodPieceHovered(moodPiece: target.moodPiece),
                      );
                }
              }
            }
          }
        },
        onPointerUp: (_) {
          _onPointerLetGo(context);
        },
        onPointerCancel: (_) {
          _onPointerLetGo(context);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i = 0; i < 100; i = i + 10)
              Row(
                children: allMoodPieces
                    .getRange(i, i + 10)
                    .map(
                      (moodPiece) => MyHitTestTarget(
                        moodPiece: moodPiece,
                        child: _MoodPieceButton(
                          height: pieceHeight,
                          width: pieceWidth,
                          moodPiece: moodPiece,
                        ),
                      ),
                    )
                    .toList(),
              ),
          ],
        ),
      ),
    );
  }
}

extension _MoodQuadrantX on MoodQuadrant {
  Alignment get alignment {
    switch (this) {
      case MoodQuadrant.highEnergyUnpleasant:
        return Alignment.topLeft;
      case MoodQuadrant.highEnergyPleasant:
        return Alignment.topRight;
      case MoodQuadrant.lowEnergyUnpleasant:
        return Alignment.bottomLeft;
      case MoodQuadrant.lowEnergyPleasant:
        return Alignment.bottomRight;
    }
  }
}

class _MoodPieceButton extends StatelessWidget {
  const _MoodPieceButton({
    required this.height,
    required this.width,
    required this.moodPiece,
  });

  final double height;
  final double width;
  final MoodPiece moodPiece;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<MoodMeterBloc>().add(
              MoodPieceSelected(moodPiece: moodPiece),
            );
      },
      child: BlocBuilder<MoodMeterBloc, MoodMeterState>(
        buildWhen: (previous, current) {
          final isPreviousMoodThis = previous.when<bool>(
            initial: (_, initialMoodPiece) {
              return false;
            },
            complete: (selectedMoodPiece, _) {
              return selectedMoodPiece == moodPiece;
            },
          );
          final isCurrentMoodThis = current.when<bool>(
            initial: (selectedMoodQuadrant, initialMoodPiece) {
              return false;
            },
            complete: (selectedMoodPiece, _) {
              return selectedMoodPiece == moodPiece;
            },
          );
          return isPreviousMoodThis || isCurrentMoodThis;
        },
        builder: (context, state) {
          var isSelected = false;
          state.when(
            initial: (selectedMoodQuadrant, initialMoodPiece) {
              if (initialMoodPiece != null) {
                isSelected = initialMoodPiece == moodPiece;
              }
            },
            complete: (selectedMoodPiece, selectedMoodQuadrant) {
              isSelected = selectedMoodPiece == moodPiece;
            },
          );
          final colorBrightness = ThemeData.estimateBrightnessForColor(
            moodPiece.color,
          );
          final userSettings = context.read<UserCustomizableSettings>();
          final selectedTextStyle = userSettings.selectedTextStyle ??
              Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: colorBrightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  );

          final unselectedTextStyle = userSettings.unselectedTextStyle ??
              Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: colorBrightness == Brightness.dark
                        ? Colors.white60
                        : Colors.black54,
                  );
          return PortalTarget(
            visible: isSelected,
            anchor: moodPiece.alignedAnchor,
            portalFollower: IgnorePointer(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  color: moodPiece.color,
                ),
                child: Center(
                  child: Text(
                    moodPiece.moodName,
                    style: selectedTextStyle,
                  ),
                ),
              ),
            ),
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: moodPiece.color,
              ),
              child: userSettings.onlyShowSelected
                  ? null
                  : Center(
                      child: Text(
                        moodPiece.moodName,
                        style: unselectedTextStyle,
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
