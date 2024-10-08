import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:woezorap/consts/styles.dart';
import 'package:woezorap/screens/onboarding.dart';
import 'package:woezorap/widget/my_button.dart';
import 'package:woezorap/widget/my_textfield.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Rotated top right design
          Positioned(
            top: 0,
            right: 0,
            child: Transform.rotate(
              angle: pi,
              child: SvgPicture.asset('assets/images/auth_design.svg'),
            ),
          ),

          // Rotated bottom left design
          Positioned(
            bottom: 0,
            left: 0,
            child: Transform.rotate(
              angle: 2 * pi,
              child: SvgPicture.asset('assets/images/auth_design.svg'),
            ),
          ),

          // Main content: logo, text fields, and button
          Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center everything vertically
            children: [
              // App logo
              Image.asset(
                'assets/icons/app_logo.png', // Replace with your logo path
                height: 200,
              ),

              const SizedBox(
                  height:
                      30), // Add spacing between the logo and the text fields

              Column(
                children: [
                  Text(
                    'Reset Password',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                  ),
                  Text(
                    'A password reset code will be sent to your new email',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              // Username/Email TextField
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: MyTextfield(
                    hintText: 'New email',
                    inputType: TextInputType.emailAddress,
                  )),

              const SizedBox(
                  height: 30), // Space between text fields and login button

              // Login Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: MyButton(
                  text: 'Send email',
                  textStyle: TextStyle(color: Colors.white, fontSize: 20),
                  color: primaryColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Onboarding()));
                  },
                  width: MediaQuery.of(context).size.width,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
