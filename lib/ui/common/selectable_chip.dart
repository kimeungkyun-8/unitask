import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:unitask/app/theme/preview.dart';

@AppThemePreview(
  group: 'Buttons',
  name: 'SelectableChip',
)
Widget preview() => const Wrap(
  spacing: 10,
  runSpacing: 10,
  children: [
    SelectableChip(name: '전체', selected: true),
    SelectableChip(name: '진행중'),
    SelectableChip(name: '완료'),
  ],
);

class SelectableChip extends StatelessWidget {
    final String name;
    final bool selected;
    
  const SelectableChip({
    super.key,
    required this.name,
    this.selected = false,
  });
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .symmetric(
        vertical: 5,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: selected 
        ? Color(0xFF3B82F6) 
        : Colors.grey,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        name, 
        style: TextStyle(
        fontSize: 16,
        fontWeight: selected ? FontWeight.bold : null,
        color: selected ? Colors.white : null,
      ))
    );
  }
}