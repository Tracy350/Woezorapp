import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:woezorap/consts/styles.dart';
import 'package:woezorap/widget/my_button.dart';
import 'package:woezorap/widget/my_textfield.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

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
          Center(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center everything vertically
              children: [
                Text('Reset Password',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 30)),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      color: Colors.grey[200]),
                  child: Center(
                    child: Text(
                      'Upload Profile Picture Image',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),

                const SizedBox(
                    height:
                        30), // Add spacing between the logo and the text fields

                Text(
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                ),

                SizedBox(
                  height: 20,
                ),
                // Username/Email TextField
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: MyTextfield(
                      hintText: 'First & last name',
                      inputType: TextInputType.emailAddress,
                    )),

                const SizedBox(height: 20), // Space between text fields

                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: MyTextfield(
                      obscureText: true,
                      hintText: 'New password',
                      inputType: TextInputType.emailAddress,
                    )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: MyTextfield(
                      obscureText: true,
                      hintText: 'Reset Password',
                      inputType: TextInputType.emailAddress,
                    )),

                const SizedBox(
                    height: 30), // Space between text fields and login button

                // Login Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: MyButton(
                    width: MediaQuery.of(context).size.width,
                    text: 'Continue',
                    textStyle: TextStyle(color: Colors.white),
                    color: primaryColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
