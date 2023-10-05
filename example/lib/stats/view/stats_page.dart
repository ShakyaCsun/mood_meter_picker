import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mood_picker_example/moods_repository/models/models.dart';
import 'package:mood_picker_example/routes/routes.dart';
import 'package:mood_picker_example/stats/providers/mood_entries.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stats'),
        automaticallyImplyLeading: false,
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final moodEntries = ref.watch(moodEntriesProvider);
          return moodEntries.when(
            data: (data) {
              if (data.isEmpty) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 500),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Record your mood and they will appear here.',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              const AddMoodEntryRoute().go(context);
                            },
                            child: const Text('Add Mood'),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
              return ListView.builder(
                itemBuilder: (context, index) {
                  if (index >= data.length) {
                    return null;
                  }
                  var hideDate = false;
                  if (index > 0 &&
                      data[index]
                          .createdAt
                          .isSameDateAs(data[index - 1].createdAt)) {
                    hideDate = true;
                  }
                  return MoodTile(
                    moodEntry: data[index],
                    hideDate: hideDate,
                  );
                },
              );
            },
            error: (error, stackTrace) {
              return Text('Error $error');
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          );
        },
      ),
    );
  }
}

class MoodTile extends StatelessWidget {
  const MoodTile({required this.moodEntry, this.hideDate = false, super.key});

  final MoodEntry moodEntry;
  final bool hideDate;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final createdDate = DateFormat.yMMMEd().format(
      moodEntry.createdAt.toLocal(),
    );
    final createdTime = DateFormat.Hms().format(moodEntry.createdAt.toLocal());
    final remarks = moodEntry.remarks.trim();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!hideDate) ...[
            const SizedBox(height: 8),
            Text(
              createdDate,
              style: textTheme.titleMedium,
            ),
          ],
          const SizedBox(height: 4),
          Row(
            children: [
              DecoratedBox(
                decoration: ShapeDecoration(
                  color: moodEntry.moodPiece?.color,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const SizedBox.square(dimension: 10),
              ),
              const SizedBox(width: 8),
              Text(
                moodEntry.moodName,
                style: textTheme.bodyLarge,
              ),
              const Spacer(),
              Text(createdTime),
            ],
          ),
          if (remarks.isNotEmpty)
            Text(
              remarks,
            ),
        ],
      ),
    );
  }
}

extension DateTimeExtensions on DateTime {
  DateTime get dateOnly {
    return DateTime(toLocal().year, toLocal().month, toLocal().day);
  }

  bool isSameDateAs(DateTime other) {
    return dateOnly == other.dateOnly;
  }
}
