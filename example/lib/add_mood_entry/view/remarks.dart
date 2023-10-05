import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mood_meter_picker/mood_meter_picker.dart';
import 'package:mood_picker_example/add_mood_entry/add_mood_entry.dart';

class RemarksPage extends StatefulWidget {
  const RemarksPage({
    required this.moodPiece,
    super.key,
  });

  final MoodPiece moodPiece;

  @override
  State<RemarksPage> createState() => _RemarksPageState();
}

class _RemarksPageState extends State<RemarksPage> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feeling ${widget.moodPiece.moodName}'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Reflect on your feelings below.',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    hintText: 'Capture what could have caused your emotion.',
                    border: OutlineInputBorder(),
                  ),
                  minLines: 7,
                  maxLines: 7,
                  maxLength: 140,
                ),
                const SizedBox(height: 16),
                Consumer(
                  builder: (context, ref, child) {
                    final isSavingEntry =
                        ref.watch(newMoodEntryProvider).isSaving;
                    return FilledButton(
                      onPressed: isSavingEntry
                          ? null
                          : () {
                              ref.read(newMoodEntryProvider.notifier).save(
                                    widget.moodPiece,
                                    _controller.text,
                                  );
                            },
                      child: isSavingEntry
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : const Text('Save'),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
