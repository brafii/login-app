import 'package:flutter/material.dart';
import 'package:login/utils/pallette.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key? key,
    required this.labelOne,
  }) : super(key: key);

  final String labelOne;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: (){

        },
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          primary: defaultColors,
          side: BorderSide(color: Colors.white),
          padding: EdgeInsets.all(10.0),
          textStyle: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Nunito',
          ),
        ),
        icon: Icon(FontAwesomeIcons.google, size: 15.0,),
        label: Text(labelOne),

      ),
    );
  }
}