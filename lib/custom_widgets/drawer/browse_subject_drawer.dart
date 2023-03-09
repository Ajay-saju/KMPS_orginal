import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kmps/screen/drawer_screen/pages/about.dart';
import 'package:kmps/screen/drawer_screen/pages/members/members.dart';
import 'package:kmps/utils/colors.dart';
import 'package:kmps/utils/reusable_text.dart';

import '../../screen/drawer_screen/pages/Setting/setting.dart';
import '../../screen/drawer_screen/pages/local_sale_ledger.dart';
import '../../screen/drawer_screen/pages/localsale.dart';
import '../../screen/drawer_screen/pages/payment/payment_list.dart';
import '../../screen/fragment/collection/collection_fregments.dart';
import '../../screen/fragment/report/report_screen/dispatch_report1.dart';
import '../../screen/fragment/report/report_screen/member_ladgger.dart';
import '../listview_model/subject_model.dart';

class DrawerSubject extends StatefulWidget {
  const DrawerSubject({
    Key? key,
  }) : super(key: key);

  @override
  State<DrawerSubject> createState() => _DrawerSubjectState();
}

class _DrawerSubjectState extends State<DrawerSubject> {
  int _current = 0;
  final List<Browse> lst = [
    Browse(image: 'images/Collection.svg', title: 'Collection'),
    Browse(image: 'images/payment.svg', title: 'Payment'),
    Browse(image: 'images/Dispatch.svg', title: 'Dispatch'),
    Browse(image: 'images/Report.svg', title: 'Ledgers'),
    Browse(image: 'images/Localsale.svg', title: 'Local Sale'),
    Browse(image: 'images/Member.svg', title: 'Member'),
    Browse(image: 'images/About.svg', title: 'About'),
    Browse(image: 'images/Setting.svg', title: 'Setting'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: lst.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {
                setState(() {
                  _current = index;
                  if (_current == 0) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Collection()));
                  } else if (_current == 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaymentList()));
                  } else if (_current == 2) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DispatchReport()));
                  } else if (_current == 3) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MemberLedger()));
                  } else if (_current == 4) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LocalSale()));
                  } else if (_current == 5) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Members()));
                  } else if (_current == 6) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const About()));
                  } else if (_current == 7) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Setting()));
                  }
                });
              },
              child: Container(
                height: 50,
                color: _current == index ? Color(0xffFFE9E9) : Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: SvgPicture.asset(
                          lst[index].image,
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      ReusableText.reusableText(
                        title: lst[index].title,
                        weight: FontWeight.w500,
                        color: buttonColors1,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
