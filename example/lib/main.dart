import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mood_meter_picker/mood_meter_picker.dart';
import 'package:mood_picker_example/selected_mood_piece.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF11B1F3),
          ),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                textColor: Colors.white,
                tileColor: Colors.black,
              );
            },
          ),
        ],
      ),
    );
  }
}
