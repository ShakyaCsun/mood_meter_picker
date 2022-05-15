import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mood_meter_picker/src/data/enums.dart';
import 'package:mood_meter_picker/src/data/mood_piece.dart';

part 'mood_meter_bloc.freezed.dart';
part 'mood_meter_event.dart';
part 'mood_meter_state.dart';

class MoodMeterBloc extends Bloc<MoodMeterEvent, MoodMeterState> {
  MoodMeterBloc({
    MoodQuadrant? moodQuadrant,
  }) : super(
          MoodMeterInitialState(
            selectedMoodQuadrant:
                moodQuadrant ?? MoodQuadrant.highEnergyPleasant,
          ),
        ) {
    on<MoodPieceSelected>(
      _onMoodPieceSelected,
    );
    on<MoodPieceHovered>(
      _onMoodPieceHovered,
    );
  }

  void _onMoodPieceSelected(
    MoodPieceSelected event,
    Emitter<MoodMeterState> emit,
  ) {
    emit(
      MoodMeterCompleteState(
        selectedMoodPiece: event.moodPiece,
        selectedMoodQuadrant: event.moodPiece.moodQuadrant,
      ),
    );
  }

  void _onMoodPieceHovered(
    MoodPieceHovered event,
    Emitter<MoodMeterState> emit,
  ) {
    emit(
      MoodMeterCompleteState(
        selectedMoodPiece: event.moodPiece,
        selectedMoodQuadrant: state.selectedMoodQuadrant,
      ),
    );
  }
}
