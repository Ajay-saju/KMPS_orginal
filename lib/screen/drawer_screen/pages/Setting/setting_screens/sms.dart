import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:kmps/utils/colors.dart';
import 'package:kmps/utils/reusable_text.dart';

import '../../../drawer_widget.dart';

class SMS extends StatefulWidget {
  const SMS({Key? key}) : super(key: key);

  @override
  State<SMS> createState() => _SMSState();
}

class _SMSState extends State<SMS> {
  bool sim = true;
  bool web = false;
  bool smsValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'SMS',
        ),
        actions: [
          SvgPicture.asset(
            'images/notification.svg',
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.06,
          )
        ],
      ),
      drawer: const DrawerWidgets(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
        child: (Column(
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 15,
                    spreadRadius: 7,
                    offset: const Offset(0, 3))
              ], color: whiteColor, borderRadius: BorderRadius.circular(3)),
              padding: EdgeInsets.all(20),
              height: 80,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableText.reusableText(
                    title: 'Send SMS',
                    size: 16,
                  ),
                  FlutterSwitch(
                    activeText: 'ON',
                    inactiveText: 'OFF',
                    toggleColor: Color(0xff1F7800),
                    activeColor: Color(0xff8AF379),
                    width: 60.0,
                    height: 22.0,
                    valueFontSize: 10,
                    toggleSize: 25.0,
                    value: smsValue,
                    borderRadius: 25.0,
                    showOnOff: true,
                    onToggle: (value) {
                      setState(() {
                        smsValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(

              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: buttonColors1, width: 1.5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          sim = true;
                          web = false;
                        });
                      },
                      child: Container(

                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: sim ? buttonColors1 : Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(30),
                          // border: Border.all(color: buttonColors1, width: 1.5)
                        ),
                        child: Center(
                          child: ReusableText.reusableText(
                            size: 18,
                            weight: FontWeight.bold,
                            color: sim ? Color(0xffF5F5F5) : buttonColors1,
                            title: 'SIM',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          web = true;
                          sim = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color:
                              web ? const Color(0xff0D4179) : Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(30),
                          // border:
                          //     Border.all(color: Color(0xff0D4179), width: 1.5),
                        ),
                        child: Center(
                          child: ReusableText.reusableText(
                            title: 'WEB',
                            color: web ? Colors.white : buttonColors1,
                            weight: FontWeight.bold,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
