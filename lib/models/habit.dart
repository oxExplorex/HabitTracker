import 'package:flutter/material.dart';

class Habit {
  final String id;
  final String name;
  final String icon;
  final List<DateTime> completedDates;
  final Color color;

  Habit({
    required this.id,
    required this.name,
    required this.icon,
    required this.completedDates,
    required this.color,
  });

  // Проверка, выполнено ли сегодня
  bool isCompletedToday() {
    final today = DateTime.now();
    return completedDates.any((date) =>
    date.year == today.year &&
        date.month == today.month &&
        date.day == today.day
    );
  }

  // Подсчёт серии (streak)
  int getCurrentStreak() {
    if (completedDates.isEmpty) return 0;

    int streak = 0;
    DateTime checkDate = DateTime.now();

    while (completedDates.any((date) =>
    date.year == checkDate.year &&
        date.month == checkDate.month &&
        date.day == checkDate.day
    )) {
      streak++;
      checkDate = checkDate.subtract(const Duration(days: 1));
    }

    return streak;
  }

  // Процент выполнения за последние 7 дней
  double getCompletionRate() {
    int completedDays = 0;
    DateTime checkDate = DateTime.now();

    for (int i = 0; i < 7; i++) {
      var isComplete = completedDates.any((date) =>
      date.year == checkDate.year &&
          date.month == checkDate.month &&
          date.day == checkDate.day
      );

      if (isComplete) {
        completedDays++;
      }

      checkDate = checkDate.subtract(const Duration(days: 1));
    }

    return completedDays / 7;  // Возвращает от 0.0 до 1.0 (0% до 100%)
  }
}