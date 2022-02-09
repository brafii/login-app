import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
    required this.labelOne,
    required this.labelTwo,
    required this.colorOne,
    required this.colorTwo,
    required this.onPress,
  }) : super(key: key);

  final String labelOne;
  final String labelTwo;
  final Color colorOne;
  final Color colorTwo;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            labelOne,
            style: TextStyle(
              color: colorOne,
              fontSize: 13.0,
              fontFamily: 'Nunito'
            ),
          ),
          SizedBox(width: 2.0),
          Text(
            labelTwo,
            style: TextStyle(
              color: colorTwo,
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
                fontFamily: 'Nunito'
            ),
          ),
        ],
      ),
    );
  }
}