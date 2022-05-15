import 'package:flutter/material.dart';
import 'package:mood_meter_picker/mood_meter_picker.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF11B1F3),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String emotion = '...';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I feel $emotion'),
      ),
      body: MoodMeterPicker(
        initialMoodPiece: MoodPiece.fromName('Hopeful'),
        onMoodSelectionChanged: (moodPiece) {
          setState(() {
            emotion = moodPiece.moodName;
          });
        },
      ),
    );
  }
}
