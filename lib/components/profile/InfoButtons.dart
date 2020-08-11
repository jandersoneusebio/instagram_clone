import 'package:flutter/material.dart';

class InfoButtons extends StatefulWidget {
  @override
  _InfoButtonsState createState() => _InfoButtonsState();

  final String text;
  final String number;
  InfoButtons({this.text, this.number});

}

class _InfoButtonsState extends State<InfoButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.number,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
        ),
        Text(
          widget.text,
          style: TextStyle(
            fontSize: 14
          ),
        )
      ],
    );
  }
}
