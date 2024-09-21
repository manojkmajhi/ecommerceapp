import 'package:flutter/material.dart';

class DailyUse extends StatefulWidget {
  const DailyUse({super.key});

  @override
  State<DailyUse> createState() => _DailyUseState();
}

class _DailyUseState extends State<DailyUse> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Daily Use'),
      ),
    );
  }
}