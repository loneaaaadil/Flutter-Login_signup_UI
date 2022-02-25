import 'package:flutter/material.dart';
// import 'package:flutter_loginpage/palatte.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup_screen/palatte.dart';
import '../widgets/rounded-button.dart';
import '../widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Container(
                  height: 130,
                  child: Center(
                    child: Text(
                      "Flutter Login",
                      style: kHeading.copyWith(fontSize: 40),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              icon: FontAwesomeIcons.solidEnvelope,
                              hint: 'Email',
                              obscureText: false,
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            const SizedBox(height: 10),
                            TextInput(
                              icon: FontAwesomeIcons.lock,
                              hint: "password",
                              obscureText: true,
                              inputAction: TextInputAction.done,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'ForgotPassword');
                              },
                              child: Text('Forget password?',
                                  style: kBodyText.copyWith(
                                    fontSize: 18,
                                  )),
                            ),
                          ]),
                      Column(
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          RoundedButton(
                            buttonText: 'Login',
                          ),
                          SizedBox(height: 40),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              color: Colors.white,
                              width: 0,
                            ))),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, 'CreateNewAccount');
                                },
                                child: Text(
                                  'CreateNewAccount',
                                  style: kBodyText.copyWith(fontSize: 20),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
