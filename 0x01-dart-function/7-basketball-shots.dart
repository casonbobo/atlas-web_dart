int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = 0;
  int teamBPoints = 0;

  teamA.forEach((shotType, count) {
    if (shotType == 'free throw') {
      teamAPoints += count * 1;
    } else if (shotType == '2 pointer') {
      teamAPoints += count * 2;
    } else if (shotType == '3 pointer') {
      teamAPoints += count * 3;
    }
  });

  teamB.forEach((shotType, count) {
    if (shotType == 'free throw') {
      teamBPoints += count * 1;
    } else if (shotType == '2 pointer') {
      teamBPoints += count * 2;
    } else if (shotType == '3 pointer') {
      teamBPoints += count * 3;
    }
  });

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
