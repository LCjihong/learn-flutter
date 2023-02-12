import 'package:flutter/material.dart';

class ButtonRow extends StatefulWidget {
  const ButtonRow({super.key});

  @override
  State<ButtonRow> createState() => _ButtonRowState();
}

class _ButtonRowState extends State<ButtonRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, bottom: 30, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          myButton(Colors.blue[600], Icons.call, 'CALL'),
          myButton(Colors.blue[600], Icons.route, 'ROUTE'),
          myButton(Colors.blue[600], Icons.share, 'SHARE'),
        ],
      ),
    );
  }
}

Widget myButton(Color? color, IconData icon, String text) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        icon,
        color: color,
        size: 30,
      ),
      Text(
        text,
        style: TextStyle(fontSize: 16, color: color),
      )
    ],
  );
}
