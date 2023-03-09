import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kmps/utils/reusable_text.dart';

import '../../custom_widgets/drawer/browse_subject_drawer.dart';
import '../../utils/colors.dart';

class DrawerWidgets extends StatefulWidget {
  const DrawerWidgets({Key? key}) : super(key: key);

  @override
  State<DrawerWidgets> createState() => _DrawerWidgetsState();
}

class _DrawerWidgetsState extends State<DrawerWidgets> {
  bool sync = false;
  String x = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 25),
                color: Theme.of(context).primaryColor,
                height: 230,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.red,
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 50.0, right: 20),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: SvgPicture.asset(
                                  'images/Group 18242.svg',
                                ),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const ReusableText.reusableText(
                          title: 'DISHA JOSHI',
                          size: 25,
                          weight: FontWeight.bold,
                          color: Color(0xffffe600)),
                      const SizedBox(
                        height: 5,
                      ),
                      const ReusableText.reusableText(
                        title: '(155831)',
                        size: 18,
                        color: Color(0xffffe600),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const ReusableText.reusableText(
                        title: 'KRISHNA DAIRY JUNAGADM',
                        size: 15,
                        color: whiteColor,
                      )
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: const ReusableText.reusableText(
                      title: 'LC. EXPIRE ON:   21/12/2023',
                      weight: FontWeight.w500,
                    ),
                  ),
                  const DrawerSubject(),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: SizedBox(
                      height: 40,
                      width: 130,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: sync ? Colors.green : buttonColors1),
                        onPressed: () {
                          setState(() {
                            sync = !sync;
                            x = TimeOfDay.now().format(context).toString();
                          });
                        },
                        child: ReusableText.reusableText(
                          title: sync ? 'Synced!' : 'Sync',
                          weight: FontWeight.bold,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ReusableText.reusableText(
                      title: 'Last Sync on:$x',
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
