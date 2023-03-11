import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kmps/controller/login/login_controller.dart';

class VerifyOtpScreen extends StatefulWidget {
  final String no;
  
  final String password;

  const VerifyOtpScreen(
      {super.key, required this.no, required this.password});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final loginController = Get.find<LoginController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Enter 4-digit OTP sent to',
              style: TextStyle(
                  fontSize: 15, letterSpacing: 1, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "+91 $widget.no",
              style: const TextStyle(
                  fontSize: 15, letterSpacing: 1, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: loginController.varifyOtpController,
                inputFormatters: [LengthLimitingTextInputFormatter(6)],
                keyboardType: TextInputType.number,
                style: const TextStyle(
                    color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
                decoration: const InputDecoration(
                    hintText: 'Enter OTP',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 18)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                loginController.verifyOtp(
                    otp: loginController.varifyOtpController.text,
                    phone: widget.no,
                    password: widget.password);
              },
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  'Verify OTP',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5),
                ),
              ),
            )
                  ],
                ),
          )),
    );
  }
}
