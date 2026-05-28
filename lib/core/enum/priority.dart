import 'package:flutter/material.dart';

enum Priority {high, mid, low,}

extension PriorityExtension on Priority {
  Color get primary => switch (this) {
    .high => Colors.red,
    .mid => Colors.amber,
    .low => Colors.green,
  };

    Color get secondary => switch (this) {
    .high => const Color(0xFFFFE2E2),
    .mid => const Color(0xFFFEF3C7),
    .low => const Color(0xFFDCFCE7),
  };
}