import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mood_meter_picker/src/data/enums.dart';

class MoodPiece extends Equatable {
  factory MoodPiece.fromLevels({
    required EnergyLevel energyLevel,
    required PleasantnessLevel pleasantnessLevel,
  }) {
    switch (energyLevel) {
      case EnergyLevel.low5:
        switch (pleasantnessLevel) {
          case PleasantnessLevel.low5:
            return MoodPiece._(
              moodName: 'Despair',
              color: const Color(0xFF0D47A1),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low4:
            return MoodPiece._(
              moodName: 'Hopeless',
              color: const Color(0xFF145EA5),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low3:
            return MoodPiece._(
              moodName: 'Desolate',
              color: const Color(0xFF1C76A8),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low2:
            return MoodPiece._(
              moodName: 'Spent',
              color: const Color(0xFF238DAC),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low1:
            return MoodPiece._(
              moodName: 'Drained',
              color: const Color(0xFF2AA4AF),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high1:
            return MoodPiece._(
              moodName: 'Sleepy',
              color: const Color(0xFF2E7D32),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high2:
            return MoodPiece._(
              moodName: 'Complacent',
              color: const Color(0xFF368A3A),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high3:
            return MoodPiece._(
              moodName: 'Tranquil',
              color: const Color(0xFF3D9641),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high4:
            return MoodPiece._(
              moodName: 'Cozy',
              color: const Color(0xFF45A349),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high5:
            return MoodPiece._(
              moodName: 'Serene',
              color: const Color(0xFF4CAF50),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
        }
      case EnergyLevel.low4:
        switch (pleasantnessLevel) {
          case PleasantnessLevel.low5:
            return MoodPiece._(
              moodName: 'Despondent',
              color: const Color(0xFF144EB9),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low4:
            return MoodPiece._(
              moodName: 'Depressed',
              color: const Color(0xFF1F67BB),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low3:
            return MoodPiece._(
              moodName: 'Sullen',
              color: const Color(0xFF2A7FBE),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low2:
            return MoodPiece._(
              moodName: 'Exhausted',
              color: const Color(0xFF3598C0),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low1:
            return MoodPiece._(
              moodName: 'Fatigued',
              color: const Color(0xFF40B0C2),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high1:
            return MoodPiece._(
              moodName: 'Mellow',
              color: const Color(0xFF3D9A51),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high2:
            return MoodPiece._(
              moodName: 'Thoughtful',
              color: const Color(0xFF44A44C),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high3:
            return MoodPiece._(
              moodName: 'Peaceful',
              color: const Color(0xFF4AAF47),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high4:
            return MoodPiece._(
              moodName: 'Comfy',
              color: const Color(0xFF51B942),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high5:
            return MoodPiece._(
              moodName: 'Carefree',
              color: const Color(0xFF57C33D),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
        }
      case EnergyLevel.low3:
        switch (pleasantnessLevel) {
          case PleasantnessLevel.low5:
            return MoodPiece._(
              moodName: 'Alienated',
              color: const Color(0xFF1B55D0),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low4:
            return MoodPiece._(
              moodName: 'Miserable',
              color: const Color(0xFF2A6FD1),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low3:
            return MoodPiece._(
              moodName: 'Lonely',
              color: const Color(0xFF3989D3),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low2:
            return MoodPiece._(
              moodName: 'Disheartened',
              color: const Color(0xFF47A2D4),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low1:
            return MoodPiece._(
              moodName: 'Tired',
              color: const Color(0xFF56BCD5),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high1:
            return MoodPiece._(
              moodName: 'Relaxed',
              color: const Color(0xFF4CB770),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high2:
            return MoodPiece._(
              moodName: 'Chill',
              color: const Color(0xFF51BF5F),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high3:
            return MoodPiece._(
              moodName: 'Restful',
              color: const Color(0xFF57C74D),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high4:
            return MoodPiece._(
              moodName: 'Blessed',
              color: const Color(0xFF5CCF3C),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high5:
            return MoodPiece._(
              moodName: 'Balanced',
              color: const Color(0xFF61D72A),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
        }
      case EnergyLevel.low2:
        switch (pleasantnessLevel) {
          case PleasantnessLevel.low5:
            return MoodPiece._(
              moodName: 'Pessimistic',
              color: const Color(0xFF225BE8),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low4:
            return MoodPiece._(
              moodName: 'Morose',
              color: const Color(0xFF3476E8),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low3:
            return MoodPiece._(
              moodName: 'Discouraged',
              color: const Color(0xFF4792E8),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low2:
            return MoodPiece._(
              moodName: 'Sad',
              color: const Color(0xFF59ADE7),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low1:
            return MoodPiece._(
              moodName: 'Bored',
              color: const Color(0xFF6BC8E7),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high1:
            return MoodPiece._(
              moodName: 'Calm',
              color: const Color(0xFF5AD38F),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high2:
            return MoodPiece._(
              moodName: 'Secure',
              color: const Color(0xFF5FD971),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high3:
            return MoodPiece._(
              moodName: 'Satisfied',
              color: const Color(0xFF63DF53),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high4:
            return MoodPiece._(
              moodName: 'Grateful',
              color: const Color(0xFF68E534),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high5:
            return MoodPiece._(
              moodName: 'Touched',
              color: const Color(0xFF6CEB16),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
        }
      case EnergyLevel.low1:
        switch (pleasantnessLevel) {
          case PleasantnessLevel.low5:
            return MoodPiece._(
              moodName: 'Disgusted',
              color: const Color(0xFF2962FF),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low4:
            return MoodPiece._(
              moodName: 'Glum',
              color: const Color(0xFF3F7FFE),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low3:
            return MoodPiece._(
              moodName: 'Disappointed',
              color: const Color(0xFF559BFD),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low2:
            return MoodPiece._(
              moodName: 'Down',
              color: const Color(0xFF6BB8FB),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low1:
            return MoodPiece._(
              moodName: 'Apathetic',
              color: const Color(0xFF81D4FA),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high1:
            return MoodPiece._(
              moodName: 'At Ease',
              color: const Color(0xFF69F0AE),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high2:
            return MoodPiece._(
              moodName: 'Easygoing',
              color: const Color(0xFF6CF483),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high3:
            return MoodPiece._(
              moodName: 'Content',
              color: const Color(0xFF70F859),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high4:
            return MoodPiece._(
              moodName: 'Loving',
              color: const Color(0xFF73FB2E),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high5:
            return MoodPiece._(
              moodName: 'Fulfilled',
              color: const Color(0xFF76FF03),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
        }
      case EnergyLevel.high1:
        switch (pleasantnessLevel) {
          case PleasantnessLevel.low5:
            return MoodPiece._(
              moodName: 'Repulsed',
              color: const Color(0xFFFF5252),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low4:
            return MoodPiece._(
              moodName: 'Troubled',
              color: const Color(0xFFFA4E5C),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low3:
            return MoodPiece._(
              moodName: 'Concerned',
              color: const Color(0xFFF64966),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low2:
            return MoodPiece._(
              moodName: 'Uneasy',
              color: const Color(0xFFF14570),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low1:
            return MoodPiece._(
              moodName: 'Peeved',
              color: const Color(0xFFEC407A),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high1:
            return MoodPiece._(
              moodName: 'Pleasant',
              color: const Color(0xFFEDE342),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high2:
            return MoodPiece._(
              moodName: 'Joyful',
              color: const Color(0xFFEFE74C),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high3:
            return MoodPiece._(
              moodName: 'Hopeful',
              color: const Color(0xFFF1EB56),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high4:
            return MoodPiece._(
              moodName: 'Playful',
              color: const Color(0xFFF2EE5F),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high5:
            return MoodPiece._(
              moodName: 'Blissful',
              color: const Color(0xFFF4F269),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
        }
      case EnergyLevel.high2:
        switch (pleasantnessLevel) {
          case PleasantnessLevel.low5:
            return MoodPiece._(
              moodName: 'Anxious',
              color: const Color(0xFFE03339),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low4:
            return MoodPiece._(
              moodName: 'Apprehensive',
              color: const Color(0xFFE33645),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low3:
            return MoodPiece._(
              moodName: 'Worried',
              color: const Color(0xFFE53951),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low2:
            return MoodPiece._(
              moodName: 'Irritated',
              color: const Color(0xFFE83B5D),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low1:
            return MoodPiece._(
              moodName: 'Annoyed',
              color: const Color(0xFFEA3E69),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high1:
            return MoodPiece._(
              moodName: 'Pleased',
              color: const Color(0xFFF2DF41),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high2:
            return MoodPiece._(
              moodName: 'Happy',
              color: const Color(0xFFF3E345),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high3:
            return MoodPiece._(
              moodName: 'Focused',
              color: const Color(0xFFF3E848),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high4:
            return MoodPiece._(
              moodName: 'Proud',
              color: const Color(0xFFF4EC4C),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high5:
            return MoodPiece._(
              moodName: 'Thrilled',
              color: const Color(0xFFF4F04F),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
        }
      case EnergyLevel.high3:
        switch (pleasantnessLevel) {
          case PleasantnessLevel.low5:
            return MoodPiece._(
              moodName: 'Fuming',
              color: const Color(0xFFD52930),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low4:
            return MoodPiece._(
              moodName: 'Frightened',
              color: const Color(0xFFDA2E3A),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low3:
            return MoodPiece._(
              moodName: 'Angry',
              color: const Color(0xFFDF3344),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low2:
            return MoodPiece._(
              moodName: 'Nervous',
              color: const Color(0xFFE4384E),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low1:
            return MoodPiece._(
              moodName: 'Restless',
              color: const Color(0xFFE93D58),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high1:
            return MoodPiece._(
              moodName: 'Energized',
              color: const Color(0xFFF6DB40),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high2:
            return MoodPiece._(
              moodName: 'Lively',
              color: const Color(0xFFF5E03D),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high3:
            return MoodPiece._(
              moodName: 'Enthusiastic',
              color: const Color(0xFFF5E53B),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high4:
            return MoodPiece._(
              moodName: 'Optimistic',
              color: const Color(0xFFF4E938),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high5:
            return MoodPiece._(
              moodName: 'Excited',
              color: const Color(0xFFF3EE35),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
        }
      case EnergyLevel.high4:
        switch (pleasantnessLevel) {
          case PleasantnessLevel.low5:
            return MoodPiece._(
              moodName: 'Livid',
              color: const Color(0xFFC0151E),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low4:
            return MoodPiece._(
              moodName: 'Furious',
              color: const Color(0xFFCA1F28),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low3:
            return MoodPiece._(
              moodName: 'Frustrated',
              color: const Color(0xFFD42832),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low2:
            return MoodPiece._(
              moodName: 'Tense',
              color: const Color(0xFFDD323C),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low1:
            return MoodPiece._(
              moodName: 'Stunned',
              color: const Color(0xFFE73B46),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high1:
            return MoodPiece._(
              moodName: 'Hyper',
              color: const Color(0xFFFBD73E),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high2:
            return MoodPiece._(
              moodName: 'Cheerful',
              color: const Color(0xFFF9DC35),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high3:
            return MoodPiece._(
              moodName: 'Motivated',
              color: const Color(0xFFF7E12D),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high4:
            return MoodPiece._(
              moodName: 'Inspired',
              color: const Color(0xFFF5E624),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high5:
            return MoodPiece._(
              moodName: 'Elated',
              color: const Color(0xFFF3EB1B),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
        }
      case EnergyLevel.high5:
        switch (pleasantnessLevel) {
          case PleasantnessLevel.low5:
            return MoodPiece._(
              moodName: 'Enraged',
              color: const Color(0xFFAB000D),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low4:
            return MoodPiece._(
              moodName: 'Panicked',
              color: const Color(0xFFBA0E17),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low3:
            return MoodPiece._(
              moodName: 'Stressed',
              color: const Color(0xFFC81D21),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low2:
            return MoodPiece._(
              moodName: 'Jittery',
              color: const Color(0xFFD72B2B),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.low1:
            return MoodPiece._(
              moodName: 'Shocked',
              color: const Color(0xFFE53935),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high1:
            return MoodPiece._(
              moodName: 'Surprised',
              color: const Color(0xFFFFD33D),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high2:
            return MoodPiece._(
              moodName: 'Upbeat',
              color: const Color(0xFFFCD92E),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high3:
            return MoodPiece._(
              moodName: 'Festive',
              color: const Color(0xFFF9DE1F),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high4:
            return MoodPiece._(
              moodName: 'Exhilarated',
              color: const Color(0xFFF5E410),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
          case PleasantnessLevel.high5:
            return MoodPiece._(
              moodName: 'Ecstatic',
              color: const Color(0xFFF2E901),
              pleasantness: pleasantnessLevel,
              energy: energyLevel,
            );
        }
    }
  }

  const MoodPiece._({
    required this.moodName,
    required this.color,
    required this.pleasantness,
    required this.energy,
  });

  /// Helper method to generate [MoodPiece] from mood name.
  ///
  /// Returns null when matching mood name is not found in the
  /// available 100 Mood Names.
  static MoodPiece? fromName(String moodName) {
    return allMoodPiecesMap[moodName];
  }

  final String moodName;
  final Color color;
  final PleasantnessLevel pleasantness;
  final EnergyLevel energy;

  MoodQuadrant get moodQuadrant {
    final highEnergies = [
      EnergyLevel.high1,
      EnergyLevel.high2,
      EnergyLevel.high3,
      EnergyLevel.high4,
      EnergyLevel.high5,
    ];
    final pleasantFeels = [
      PleasantnessLevel.high1,
      PleasantnessLevel.high2,
      PleasantnessLevel.high3,
      PleasantnessLevel.high4,
      PleasantnessLevel.high5,
    ];
    if (highEnergies.contains(energy)) {
      if (pleasantFeels.contains(pleasantness)) {
        return MoodQuadrant.highEnergyPleasant;
      }
      return MoodQuadrant.highEnergyUnpleasant;
    } else {
      if (pleasantFeels.contains(pleasantness)) {
        return MoodQuadrant.lowEnergyPleasant;
      }
      return MoodQuadrant.lowEnergyUnpleasant;
    }
  }

  @override
  List<Object> get props => [pleasantness, energy, moodName, color];
}

@internal
final allMoodPieces = List<MoodPiece>.unmodifiable(<MoodPiece>[
  for (final energyLevel in EnergyLevel.values)
    for (final pleasantnessLevel in PleasantnessLevel.values)
      MoodPiece.fromLevels(
        energyLevel: energyLevel,
        pleasantnessLevel: pleasantnessLevel,
      )
]);

@internal
final allMoodPiecesMap = Map<String, MoodPiece>.unmodifiable(
  <String, MoodPiece>{
    for (final moodPiece in allMoodPieces) moodPiece.moodName: moodPiece,
  },
);
