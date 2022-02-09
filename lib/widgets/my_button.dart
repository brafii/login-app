import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.labelOne,
    required this.textColor,
  }) : super(key: key);

  final String labelOne;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: (){

        },
        child: Text(labelOne),
        style: OutlinedButton.styleFrom(
          primary: textColor,
          side: BorderSide(color: Colors.white),
          padding: EdgeInsets.all(10.0),
          textStyle: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Nunito',
          ),
        ),
      ),
    );
  }
}