import 'package:flutter/material.dart';

class RecoveryTeamRequest extends StatelessWidget {
  const RecoveryTeamRequest({super.key});

  @override
  Widget build(BuildContext context) {
    const subtitle = '구난차량 요청';
    return Container(
      width: 200,
      height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(1.0),
            spreadRadius: 0,
            blurRadius: 7,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Icon(Icons.accessibility_outlined, size: 75),
          ),
          Text(subtitle),
        ]
      )
    );
  }
}