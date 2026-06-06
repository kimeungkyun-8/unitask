import 'package:flutter/material.dart';
import 'package:unitask/app/theme/preview.dart';
import 'package:unitask/core/enum/priority.dart';

@AppThemePreview(group: 'Badge', name: '우선순위')
Widget preview() {
  return Row(
    spacing: 10,
    children: const [
      PriorityBadge(priority: Priority.high),
      PriorityBadge(priority: Priority.medium),
      PriorityBadge(priority: Priority.low),
    ],
  );
}

class PriorityBadge extends StatelessWidget {
  const PriorityBadge({super.key, required this.priority});
  final Priority priority;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: priority.secondary,
        borderRadius: .circular(50),
      ),
      child: Row(
        spacing: 5,
        mainAxisSize: .min,
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(shape: .circle, color: priority.primary),
          ),
          Text(
            priority.title,
            style: TextStyle(
              color: priority.primary,
              fontSize: 12,
              fontWeight: .w700,
            ),
          ),
        ],
      ),
    );
  }
}
