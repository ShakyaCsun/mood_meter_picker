import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mood_meter_picker/mood_meter_picker.dart';
import 'package:mood_picker_example/add_mood_entry/add_mood_entry.dart';
import 'package:mood_picker_example/routes/routes.dart';

class AddMoodEntryPage extends ConsumerWidget {
  const AddMoodEntryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(newMoodEntryProvider, (previous, next) {
      switch (next) {
        case MoodEntrySuccess():
          const WelcomeRoute().go(context);
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(
                content: Text('Mood Data Recorded'),
              ),
            );
        case MoodEntryFailure(:final message):
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(message),
              ),
            );
        default:
          break;
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: Consumer(
          builder: (context, ref, child) {
            final quadrant = ref.watch(moodQuadrantProvider);
            return Text('$quadrant');
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: MoodMeterPicker(
              selectedTextStyle: const TextStyle(
                fontSize: 20,
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w600,
              ),
              unselectedTextStyle: const TextStyle(
                fontSize: 16,
                color: Color(0xAFFFFFFF),
                fontWeight: FontWeight.w500,
              ),
              onMoodSelectionChanged: (moodPiece) {
                ref.read(selectedMoodPieceProvider.notifier).moodPieceChanged(
                      moodPiece,
                    );
              },
            ),
          ),
          Consumer(
            builder: (context, ref, child) {
              final emotion =
                  ref.watch(selectedMoodPieceProvider)?.moodName ?? '...';
              return ListTile(
                title: Text('I feel $emotion'.toUpperCase()),
                trailing: TextButton(
                  onPressed: emotion == '...'
                      ? null
                      : () {
                          if (ref.read(newMoodEntryProvider).isSaving) {
                            return;
                          }
                          RemarksRoute(moodName: emotion).go(context);
                        },
                  child: ref.watch(newMoodEntryProvider).isSaving
                      ? const CircularProgressIndicator()
                      : const Text('Next'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
