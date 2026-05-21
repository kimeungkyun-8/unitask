import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:unitask/app/theme/preview.dart';

@AppThemePreview(
  group: 'Items',
  name: 'TaskCard',
)

Widget preview() {
  return TaskCard(checked: true, title: 'Sample Task', date: DateTime.now(), 
  category: Container(
    width: 30,
    height: 15,
    color: Colors.blue,
   ),
  );
}


class TaskCard extends StatelessWidget {
  final bool checked;
  final String title;
  final DateTime date;
  final VoidCallback? onSelected;
  final Function(bool value)? onChecked;
  final Widget category;
  
  const TaskCard({ 
    super.key,
    required this.checked,
    required this.title,
    required this.date,
    this.onSelected,
    required this.category,
    this.onChecked,
    });
  


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            MainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              category,
              Checkbox(
                onChanged: onChecked,
              )
            ],
          ),
        ],
      ),
    );
  }
}