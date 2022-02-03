import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.labelOne
  }) : super(key: key);

  final String labelOne;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: (){

        },
        child: Text(labelOne),
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          side: BorderSide(color: Colors.white),
          padding: EdgeInsets.all(10.0),
          textStyle: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}