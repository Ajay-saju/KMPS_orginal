import 'package:flutter/material.dart';
import 'package:kmps/utils/colors.dart';
import 'package:kmps/utils/reusable_text.dart';

class MemberUpdateAlert extends StatefulWidget {
  const MemberUpdateAlert({
    Key? key,
  }) : super(key: key);

  @override
  State<MemberUpdateAlert> createState() => _MemberUpdateAlertState();
}

class _MemberUpdateAlertState extends State<MemberUpdateAlert> {
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
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ReusableText.reusableText(
                      title: 'Member Information',
                      size: 20,
                      color: Colors.black,
                      textAlign: TextAlign.center,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 5,
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
