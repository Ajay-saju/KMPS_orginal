import 'package:flutter/material.dart';
import 'package:kmps/utils/colors.dart';
import 'package:kmps/utils/reusable_text.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        backgroundColor: buttonColors1,
        title: const ReusableText.reusableText(
          title: 'Forgot Password',
        ),
      ),
      body: Column(
        children: const [
          SizedBox(
            height: 20,
          ),
          ReusableText.reusableText(
            title: 'Enter your Email',
            size: 20,
            weight: FontWeight.bold,
            color: buttonColors1,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your Email',
                  hintStyle: TextStyle(
                      color: buttonColors1, fontWeight: FontWeight.w500)),
            ),
          )
        ],
      ),
    );
  }
}
