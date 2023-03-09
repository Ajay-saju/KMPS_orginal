import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controller/login/login_controller.dart';
import 'forgotpassword_screen.dart';
import 'home_screen.dart';

const _style = TextStyle(color: Colors.white);

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final loginController = Get.put(LoginController());
  bool _visibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SvgPicture.asset(
            'images/background.svg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Image(
                image: AssetImage(
                  'images/uperContainer.png',
                ),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Image(
                image: AssetImage('images/lowerImage.png'),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ],
          ),
          Form(
              key: loginController.loginFormKey,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 55.0, bottom: 10),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'images/Logo.svg',
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Log In',
                              style: _style.copyWith(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                              ],
                              validator: (value) {
                                if (value!.isNotEmpty && value.length > 9) {
                                  return null;
                                } else if (value.length < 9 &&
                                    value.isNotEmpty) {
                                  return "Your Mobile Is Short";
                                } else {
                                  return 'Required Mobile No ';
                                }
                              },
                              controller: loginController.phoneController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  filled: true,
                                  fillColor: Colors.white,
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Icon(
                                      Icons.phone_android,
                                      color: Colors.grey.shade600,
                                      size: 30,
                                    ),
                                  )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: loginController.passwordController,
                              validator: (value) {
                                if (value!.isNotEmpty && value.length > 3) {
                                  return null;
                                } else if (value.length < 3 &&
                                    value.isNotEmpty) {
                                  return "Your Pin is Short";
                                } else {
                                  return 'Required Pin';
                                }
                              },
                              obscureText: _visibility,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  filled: true,
                                  fillColor: Colors.white,
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Icon(
                                      Icons.lock,
                                      size: 30,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(
                                          () {
                                            _visibility = !_visibility;
                                          },
                                        );
                                      },
                                      icon: Icon(_visibility
                                          ? Icons.visibility_off
                                          : Icons.visibility))),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ForgotPassword()));
                                },
                                child: const Text(
                                  'Forgot Password?',
                                  style: _style,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 60,
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff2867AA)),
                                onPressed: () async {
                                  if (loginController.loginFormKey.currentState!
                                      .validate()) {
                                    loginController.getLoginOtp(
                                        phone: loginController
                                            .phoneController.text,
                                        password: loginController
                                            .passwordController.text);
                                  }

                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             const HomeScreen()));
                                },
                                child: Text(
                                  'Login Using OTP',
                                  style: _style.copyWith(fontSize: 16),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          const Text(
                            'Powered By',
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SvgPicture.asset(
                            'images/Krshnaenter.svg',
                            height: 27,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
