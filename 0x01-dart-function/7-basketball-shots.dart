// File: 7-basketball-shots.dart

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int pointsA = teamA['Free throws']! + (2 * teamA['2 pointers']!) + (3 * teamA['3 pointers']!);
  int pointsB = teamB['Free throws']! + (2 * teamB['2 pointers']!) + (3 * teamB['3 pointers']!);

  if (pointsA > pointsB) {
    return 1;
  } else if (pointsA < pointsB) {
    return 2;
  } else {
    return 0;
  }
}
