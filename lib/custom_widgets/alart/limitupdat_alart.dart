import 'package:flutter/material.dart';
import 'package:kmps/utils/colors.dart';
import 'package:kmps/utils/reusable_text.dart';

class LimitUpdateAlert extends StatefulWidget {
  final String name ;
  const LimitUpdateAlert({
    Key? key, required this.name,
  }) : super(key: key);

  @override
  State<LimitUpdateAlert> createState() => _LimitUpdateAlertState();
}

class _LimitUpdateAlertState extends State<LimitUpdateAlert> {
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
                  children:  [
                 const   ReusableText.reusableText(
                      title: 'Limit for,',
                      size: 20,
                      color: Colors.black,
                      textAlign: TextAlign.center,
                      weight: FontWeight.bold,
                    ),
                   const SizedBox(
                      height: 6,
                    ),
                    ReusableText.reusableText(
                      title: widget.name,
                      size: 20,
                      color: Colors.black,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    ReusableText.reusableText(
                      title: 'Updated!',
                      size: 20,
                      color: Colors.black,
                      weight: FontWeight.bold,
                    )
                  ],
                ),
              ),
            ),
            const Positioned(
              top: -45,
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Color(0xffD9D9D9),
                child: CircleAvatar(
                  radius: 40,
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
