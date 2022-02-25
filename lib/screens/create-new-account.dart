import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup_screen/palatte.dart';
import 'package:login_signup_screen/widgets/background-image.dart';
import 'package:login_signup_screen/widgets/text-input.dart';
import 'package:login_signup_screen/widgets/widgets.dart';

class CreateNewAccount extends StatelessWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: size.width * 0.2),
              Stack(
                children: [
                  Center(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 4,
                        sigmaY: 4,
                      ),
                      child: CircleAvatar(
                        child: Icon(
                          FontAwesomeIcons.user,
                          color: Colors.white,
                          size: size.width * 0.08,
                        ),
                        radius: size.width * 0.10,
                        backgroundColor: Colors.grey[400]?.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.06,
                    width: size.width * 1.16,
                    child: Container(
                      height: size.width * 0.06,
                      width: size.width * 0.06,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 1),
                        color: Colors.blue,
                      ),
                      child: Icon(
                        FontAwesomeIcons.arrowUp,
                        size: 13,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.width * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextInput(
                        icon: FontAwesomeIcons.user,
                        hint: 'User',
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.next,
                        obscureText: false),
                    TextInput(
                        icon: FontAwesomeIcons.solidEnvelope,
                        hint: 'Email',
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.next,
                        obscureText: false),
                    TextInput(
                        icon: FontAwesomeIcons.lock,
                        inputAction: TextInputAction.next,
                        hint: 'Password',
                        obscureText: true),
                    TextInput(
                        icon: FontAwesomeIcons.lock,
                        inputAction: TextInputAction.next,
                        hint: 'Confirm Password',
                        obscureText: true),
                    SizedBox(
                      height: 25,
                    ),
                    RoundedButton(buttonText: 'Register'),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Already have a account?',
                              style: kBodyText,
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/');
                            },
                            child: Text(
                              'Login',
                              style: kBodyText.copyWith(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
        )
      ],
    );
  }
}
