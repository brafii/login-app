import 'package:flutter/material.dart';
import 'package:login/screens/sign_up.dart';
import 'package:login/utils/pallette.dart';
import 'package:login/widgets/contents.dart';
import 'package:login/widgets/footer.dart';
import 'package:login/widgets/google_button.dart';
import 'package:login/widgets/my_button.dart';
import 'package:login/screens/sign_in.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultColors,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: EdgeInsets.all(deviceSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Image.asset('images/user.png', width: 300.0,)),
                  SizedBox(height: 10.0),
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 33.0,
                      color: Colors.white,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  NewContents(
                    WordOne: 'Manage your expenses',
                    WordTwo: 'seamlessly & intuitively',
                  ),
                  SizedBox(height: 50.0),
                  GoogleButton(
                    labelOne: 'Sign in with Google',
                  ),
                  SizedBox(height: 7.0),
                  MyButton(
                    labelOne: 'Create an account',
                    textColor: Colors.white,
                    borderColor: Colors.white,
                    backgroundColor: defaultColors,
                    onPress: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                  ),
                  SizedBox(height: 30),
                  Footer(
                    labelOne: 'Already have an account?',
                    labelTwo: 'Sign in',
                    colorOne: Color(0xff5687eb),
                    colorTwo: Colors.white,
                    onPress: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
