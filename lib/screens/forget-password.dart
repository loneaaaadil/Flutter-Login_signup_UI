import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup_screen/palatte.dart';
import 'package:login_signup_screen/widgets/text-input.dart';
import 'package:login_signup_screen/widgets/widgets.dart';

import '../widgets/background-image.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
            title: Text("Forget Password"),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                Container(
                  width: size.width * 0.6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Enter your email we will send instruction to reset your password',
                      style: kBodyText.copyWith(fontSize: 17),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextInput(
                    icon: FontAwesomeIcons.solidEnvelope,
                    hint: "Email",
                    obscureText: false),
                RoundedButton(buttonText: "Send")
              ],
            ),
          ),
        )
      ],
    );
  }
}
