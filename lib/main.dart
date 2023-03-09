import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kmps/screen/home_screen.dart';
import 'package:kmps/screen/login_screen.dart';
import 'package:kmps/utils/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

late SharedPreferences sessionlog;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sessionlog = await SharedPreferences.getInstance();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final token = sessionlog.getString('token');
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: primaryColor,
        ),
        home: token != null ?const  HomeScreen() :const  LogIn(),
      );
    });
  }
}
