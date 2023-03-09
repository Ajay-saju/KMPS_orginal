import 'package:flutter/material.dart';
import 'package:kmps/utils/colors.dart';
import 'package:kmps/utils/reusable_text.dart';

class Alert extends StatefulWidget {
  const Alert({
    Key? key,
  }) : super(key: key);

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Container(
              color: const Color(0xff95E7BB),
              alignment: Alignment.center,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ReusableText.reusableText(
                      title: 'Collection Added!',
                      size: 20,
                      color: Colors.black,
                      textAlign: TextAlign.center,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    ReusableText.reusableText(
                      title: 'Thank you!',
                      size: 13,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ReusableText.reusableText(
                      title: 'JIGAR RABARI',
                      size: 20,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
            const Positioned(
              top: -50,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xffD9D9D9),
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: buttonColors1,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
