part of 'mood_meter_bloc.dart';

abstract class MoodMeterEvent extends Equatable {
  const MoodMeterEvent();

  @override
  List<Object> get props => [];
}

class MoodPieceSelected extends MoodMeterEvent {
  const MoodPieceSelected({required this.moodPiece});

  final MoodPiece moodPiece;

  @override
  List<Object> get props => [moodPiece];
}

/// When Mood Pieces is Hovered, selectedQuadrant doesn't change
class MoodPieceHovered extends MoodMeterEvent {
  const MoodPieceHovered({required this.moodPiece});

  final MoodPiece moodPiece;

  @override
  List<Object> get props => [moodPiece];
}
