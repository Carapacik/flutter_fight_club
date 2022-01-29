import 'package:fightclub/resources/app_colors.dart';
import 'package:flutter/material.dart';

class FightResult {
  final String result;
  final Color color;

  const FightResult._(this.result, this.color);

  static const won = FightResult._("Won", AppColors.green);
  static const lost = FightResult._("Lost", AppColors.red);
  static const draw = FightResult._("Draw", AppColors.blueButton);

  static const values = [won, lost, draw];

  static FightResult getByName(final String name) {
    return values.firstWhere((fightResult) => fightResult.result == name);
  }

  static FightResult? calculateResult(
    final int youLives,
    final int enemyLives,
  ) {
    if (youLives == 0 && enemyLives == 0) {
      return draw;
    } else if (youLives == 0) {
      return lost;
    } else if (enemyLives == 0) {
      return won;
    } else {
      return null;
    }
  }

  @override
  String toString() {
    return "FightResult{result : $result}";
  }
}