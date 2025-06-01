import 'package:flutter/material.dart';

import 'Widgets/otp_inpu_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(height: 50),
              Text(
                'We have send a verification code to \n01679828659',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 20),
              OtpInpuField(),
            ],
          ),

          Column(
            children: [
              Text('00.30s'),
              RichText(
                text: TextSpan(
                  text: "Didn't received the mail  ",
                  style: TextStyle(color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Resend now ',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ],
      ),
    );
  }
}
