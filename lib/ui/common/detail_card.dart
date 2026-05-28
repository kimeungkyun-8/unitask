import 'package:flutter/material.dart';
import 'package:unitask/app/theme/preview.dart';
import 'package:intl/intl.dart';

@AppThemePreview(
  name: '상세 카드',
  group: 'Cards',
)

Widget preview() =>  DetailCard(
  subject: '과목명',
  title: '과제명',
   date: DateTime.now().copyWith(month: 6,day: 4,), 
);

class DetailCard extends StatelessWidget {

  final String subject;
  final String title;
  final DateTime date;

  const DetailCard({super.key
    , required this.subject
    , required this.title
    , required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFE0E7FF),
            Color(0xFFFEE2E2),
          ],
          begin: .bottomLeft,
          end: .topRight,
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6 ),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
            subject,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              
            ),  
          )
          ),
      
        ]
      )
    );
  }
}