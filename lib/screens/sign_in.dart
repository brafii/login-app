import 'package:flutter/material.dart';
import 'package:login/screens/sign_up.dart';
import 'package:login/utils/pallette.dart';
import 'package:login/widgets/footer.dart';
import 'package:login/widgets/my_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            decoration: BoxDecoration(
              color: defaultColors,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 36.0, horizontal: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Sign in',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome Back',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Hello there, sign in to continue!',
                            style: TextStyle(
                              color: Color(0xff8691a3),
                              fontFamily: 'Nunito',
                            ),
                          ),
                          SizedBox(height: 40.0),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xfff6f7f9),
                              labelText: 'Enter your username or email',
                              hintText: 'Enter your username or email',
                              labelStyle: TextStyle(color: Color(0xff8691a3)),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xfff6f7f9)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xfff6f7f9)),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xfff6f7f9),
                              labelText: 'Password',
                              hintText: 'Password',
                              labelStyle: TextStyle(color: Color(0xff8691a3)),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xfff6f7f9)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xfff6f7f9)),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: defaultColors,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30.0),
                          MyButton(
                            labelOne: 'Sign in',
                            backgroundColor: defaultColors,
                            textColor: Colors.white,
                            borderColor: defaultColors,
                            onPress: (){

                            },
                          ),
                          SizedBox(height: 60.0),
                          Footer(
                            labelOne: 'Dont\'t have an account?',
                            labelTwo: 'Sign up',
                            colorOne: Color(0xff8691a3),
                            colorTwo: defaultColors,
                            onPress: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignUp()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
