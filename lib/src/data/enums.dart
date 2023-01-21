enum MoodQuadrant {
  highEnergyUnpleasant,
  highEnergyPleasant,
  lowEnergyUnpleasant,
  lowEnergyPleasant;

  @override
  String toString() {
    switch (this) {
      case MoodQuadrant.highEnergyUnpleasant:
        return 'High Energy, Unpleasant';
      case MoodQuadrant.highEnergyPleasant:
        return 'High Energy, Pleasant';
      case MoodQuadrant.lowEnergyUnpleasant:
        return 'Low Energy, Unpleasant';
      case MoodQuadrant.lowEnergyPleasant:
        return 'Low Energy, Pleasant';
    }
  }
}

enum EnergyLevel {
  high5(10),
  high4(9),
  high3(8),
  high2(7),
  high1(6),
  low1(5),
  low2(4),
  low3(3),
  low4(2),
  low5(1);

  const EnergyLevel(this.rating);

  /// Energy rating from 1 to 10 with 1 being the lowest level of Energy
  final int rating;
}

enum PleasantnessLevel {
  low5(1),
  low4(2),
  low3(3),
  low2(4),
  low1(5),
  high1(6),
  high2(7),
  high3(8),
  high4(9),
  high5(10);

  const PleasantnessLevel(this.rating);

  /// Pleasantness rating from 1 to 10 with 1 being the lowest level of Energy
  final int rating;
}

extension EnergyLevelExtensions on EnergyLevel {
  /// The next/higher [EnergyLevel] if any.
  /// In the Mood Graph, this means going up in Y-axis.
  EnergyLevel? get next {
    if (index == 0) {
      return null;
    }
    return EnergyLevel.values[index - 1];
  }

  /// The previous/lower [EnergyLevel] if any.
  /// In the Mood Graph, this means going down in Y-axis.
  EnergyLevel? get previous {
    if (index + 1 == EnergyLevel.values.length) {
      return null;
    }
    return EnergyLevel.values[index + 1];
  }
}

extension PleasantnessLevelExtensions on PleasantnessLevel {
  /// The next/higher [PleasantnessLevel] if any.
  /// In the Mood Graph, this means going right in X-axis.
  PleasantnessLevel? get next {
    if (index + 1 == PleasantnessLevel.values.length) {
      return null;
    }
    return PleasantnessLevel.values[index + 1];
  }

  /// The previous/lower [PleasantnessLevel] if any.
  /// In the Mood Graph, this means going left in X-axis.
  PleasantnessLevel? get previous {
    if (index == 0) {
      return null;
    }
    return PleasantnessLevel.values[index - 1];
  }
}
