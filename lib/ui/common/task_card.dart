import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:unitask/app/theme/preview.dart';
import 'package:unitask/ui/common/subject_label.dart';

@AppThemePreview(group: 'Items', name: 'TaskCard')
Widget preview() {
  return TaskCard(
    onCheckde: (value) {},
    onSelected: () {},
    checked: false,
    title: 'Flutter 개발',
    date: DateTime.now().copyWith(month: 6, day: 4),
    category: SubjectLabel(text: 'Flutter'),
  );
}

class TaskCard extends StatelessWidget {
  final bool checked;
  final String title;
  final DateTime date;
  final VoidCallback? onSelected;
  final Function(bool? value)? onCheckde;
  final Widget category;

  const TaskCard({
    super.key,
    required this.checked,
    required this.title,
    required this.date,
    this.onSelected,
    this.onCheckde,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final dDay = DateTime.now().difference(date).inDays;

    final dDayColor = switch (dDay) {
      <= 3 => Colors.red,
      <= 7 => Colors.orange,
      _ => Colors.black,
    };

    return Card(
      child: Container(
        height: 120,
        padding: const .symmetric(vertical: 6, horizontal: 12),
        child: Column(
          crossAxisAlignment: .stretch,
          mainAxisAlignment: .spaceBetween,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                category,
                Checkbox(
                  onChanged: onCheckde,
                  value: checked,
                  visualDensity: .compact,
                  fillColor: .resolveWith(
                    (states) => states.contains(WidgetState.selected)
                        ? Colors.blue
                        : Color(0xFFF3F4F6),
                  ),
                  shape: RoundedRectangleBorder(borderRadius: .circular(5)),
                  side: BorderSide(color: Colors.transparent),
                  materialTapTargetSize: .shrinkWrap,
                ),
              ],
            ),
            Text(
              title,
              maxLines: 1,
              overflow: .ellipsis,
              style: TextStyle(fontSize: 15, fontWeight: .bold),
            ),
            Row(
              spacing: 5,
              children: [
                Icon(LucideIcons.calendarRange, size: 12, color: dDayColor),
                Text(
                  DateFormat('yyyy.MM.dd').format(date),
                  style: TextStyle(fontSize: 12, color: dDayColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
