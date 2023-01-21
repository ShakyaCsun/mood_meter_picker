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
  MoodQuadrant quadrant = MoodQuadrant.highEnergyPleasant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$quadrant'),
      ),
      body: Column(
        children: [
          Expanded(
            child: MoodMeterPicker(
              initialMoodPiece: MoodPiece.fromName('Hopeful'),
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
                setState(() {
                  emotion = moodPiece.moodName;
                  quadrant = moodPiece.moodQuadrant;
                });
              },
            ),
          ),
          ListTile(
            title: Text('I feel $emotion'.toUpperCase()),
            textColor: Colors.white,
            tileColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
