enum MoodQuadrant {
  highEnergyUnpleasant,
  highEnergyPleasant,
  lowEnergyUnpleasant,
  lowEnergyPleasant;

  @override
  String toString() {
    switch (this) {
      case MoodQuadrant.highEnergyUnpleasant:
        return 'High Energy Unpleasant';
      case MoodQuadrant.highEnergyPleasant:
        return 'High Energy Pleasant';
      case MoodQuadrant.lowEnergyUnpleasant:
        return 'Low Energy Unpleasant';
      case MoodQuadrant.lowEnergyPleasant:
        return 'Low Energy Pleasant';
    }
  }
}

enum EnergyLevel {
  high5,
  high4,
  high3,
  high2,
  high1,
  low1,
  low2,
  low3,
  low4,
  low5,
}

enum PleasantnessLevel {
  low5,
  low4,
  low3,
  low2,
  low1,
  high1,
  high2,
  high3,
  high4,
  high5,
}
