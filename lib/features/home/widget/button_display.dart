import 'package:flutter/material.dart';

class ButtonDisplayItem extends StatelessWidget {
  const ButtonDisplayItem({
    super.key,
    required this.toolsbtn,
    required this.navigateTo,
  });

  final String toolsbtn;
  final Widget navigateTo;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(width: 5),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => navigateTo),
          );
        },
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: const BorderSide(color: Colors.green, width: 1.1),
            )),
        child: Text(
          toolsbtn,
          style: const TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.green),
        ),
      ),
    ]);
  }
}
