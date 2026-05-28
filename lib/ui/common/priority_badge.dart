import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:unitask/app/theme/preview.dart';
import 'package:unitask/core/enum/priority.dart';

@AppThemePreview(
  name: '우선순위',
  group: 'Badges',
)
Widget preview() => const Wrap(
  spacing: 8,
  children: [
    PriorityBadge(priority: Priority.high),
    PriorityBadge(priority: Priority.mid),
    PriorityBadge(priority: Priority.low),
  ],
);




class PriorityBadge extends StatelessWidget {

  final Priority priority;  
  
  const PriorityBadge({
    super.key, 
    this.priority = Priority.mid,});

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
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            LucideIcons.dot,
            color: priority.primary,
            size: 10,
          ),
          Text(
            priority.title,
          style: TextStyle(
            color: priority.primary,
            fontSize: 12,
            fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}