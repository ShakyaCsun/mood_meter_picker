import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:mood_meter_picker/mood_meter_picker.dart';
import 'package:mood_meter_picker/src/bloc/mood_meter_bloc.dart';
import 'package:mood_meter_picker/src/data/extensions.dart';
import 'package:mood_meter_picker/src/data/mood_picker_settings.dart';
import 'package:mood_meter_picker/src/widgets/animated_overflow_box_align.dart';
import 'package:mood_meter_picker/src/widgets/my_hit_test_target.dart';
import 'package:mood_meter_picker/src/widgets/selected_mood_tile.dart';

typedef MoodPieceSelectionCallback = void Function(MoodPiece moodPiece);

class MoodMeterPicker extends StatelessWidget {
  const MoodMeterPicker({
    required this.onMoodSelectionChanged,
    super.key,
    this.initialMoodQuadrant,
    this.initialMoodPiece,
    this.selectedTextStyle,
    this.unselectedTextStyle,
  });

  final MoodPiece? initialMoodPiece;
  final MoodQuadrant? initialMoodQuadrant;
  final MoodPieceSelectionCallback onMoodSelectionChanged;

  /// [TextStyle] for unselected [MoodPiece] tile.
  ///
  /// Defaults to [Theme.of(context).textTheme.labelMedium] with
  /// [Colors.white60] color
  final TextStyle? unselectedTextStyle;

  /// [TextStyle] for unselected [MoodPiece] tile.
  ///
  /// Defaults to [Theme.of(context).textTheme.bodyLarge] with
  /// [Colors.white] color.
  final TextStyle? selectedTextStyle;

  @override
  Widget build(BuildContext context) {
    final userSettings = MoodPickerSettings(
      selectedTextStyle: selectedTextStyle,
      unselectedTextStyle: unselectedTextStyle,
    );

    return Material(
      clipBehavior: Clip.hardEdge,
      child: Portal(
        child: RepositoryProvider.value(
          value: userSettings,
          child: BlocProvider(
            create: (context) {
              final moodPiece = initialMoodPiece;
              if (moodPiece != null) {
                return MoodMeterBloc(
                  moodQuadrant: moodPiece.moodQuadrant,
                )..add(MoodPieceSelected(moodPiece: moodPiece));
              }
              return MoodMeterBloc(moodQuadrant: initialMoodQuadrant);
            },
            child: _MoodPickerView(
              onMoodSelectionChanged: onMoodSelectionChanged,
            ),
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
    final state = context.read<MoodMeterBloc>().state;
    if (state case MoodMeterCompleteState(:final selectedMoodPiece)) {
      context.read<MoodMeterBloc>().add(
            MoodPieceSelected(moodPiece: selectedMoodPiece),
          );
    }
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
          final isPreviousMoodThis = switch (previous) {
            MoodMeterInitialState() => false,
            MoodMeterCompleteState(:final selectedMoodPiece) =>
              selectedMoodPiece == moodPiece,
          };
          final isCurrentMoodThis = switch (current) {
            MoodMeterInitialState() => false,
            MoodMeterCompleteState(:final selectedMoodPiece) =>
              selectedMoodPiece == moodPiece
          };
          return isPreviousMoodThis || isCurrentMoodThis;
        },
        builder: (context, state) {
          var isSelected = false;
          switch (state) {
            case MoodMeterInitialState(:final initialMoodPiece):
              isSelected = initialMoodPiece == moodPiece;
            case MoodMeterCompleteState(:final selectedMoodPiece):
              isSelected = selectedMoodPiece == moodPiece;
          }
          final userSettings = context.read<MoodPickerSettings>();
          final textTheme = Theme.of(context).textTheme;
          final selectedTextStyle = userSettings.selectedTextStyle ??
              (textTheme.bodyLarge ?? const TextStyle()).copyWith(
                color: Colors.white,
              );
          final unselectedTextStyle = userSettings.unselectedTextStyle ??
              (textTheme.labelMedium ?? const TextStyle())
                  .copyWith(color: Colors.white60);

          final labelOnTop =
              !(moodPiece.isTopMost || moodPiece.energy == EnergyLevel.low1);

          return PortalTarget(
            visible: isSelected,
            anchor: Aligned.center,
            portalFollower: IgnorePointer(
              child: SelectedMoodTile(
                moodPiece: moodPiece,
                height: height * 1.2,
                width: width * 1.2,
                selectedTextStyle: selectedTextStyle,
                unselectedTextStyle: unselectedTextStyle,
                labelOnTop: labelOnTop,
              ),
            ),
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: moodPiece.color,
              ),
            ),
          );
        },
      ),
    );
  }
}
