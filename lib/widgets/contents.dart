import 'package:flutter/material.dart';

class NewContents extends StatelessWidget {
  const NewContents({
    Key? key,
    required this.WordOne,
    required this.WordTwo,
  }) : super(key: key);

  final String WordOne;
  final String WordTwo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            WordOne,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        ),
        SizedBox(height: 6.0),
        Text(
          WordTwo,
          style: TextStyle(
            color: Colors.white,
            fontSize: 19.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}