import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
    required this.labelOne,
    required this.labelTwo,
  }) : super(key: key);

  final String labelOne;
  final String labelTwo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          labelOne,
          style: TextStyle(
            color: Color(0xff5687eb),
            fontSize: 13.0,
          ),
        ),
        SizedBox(width: 2.0),
        Text(
          labelTwo,
          style: TextStyle(
            color: Colors.white,
            fontSize: 13.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}