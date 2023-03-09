import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kmps/custom_widgets/table/table_with_divider.dart';
import 'package:kmps/screen/drawer_screen/pages/payment/payment.dart';

import '../../../../custom_widgets/table/table.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/reusable_text.dart';
import '../../drawer_widget.dart';

class PaymentList extends StatefulWidget {
  const PaymentList({Key? key}) : super(key: key);

  @override
  State<PaymentList> createState() => _PaymentListState();
}

class _PaymentListState extends State<PaymentList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text(
            'Payment List',
          ),
          actions: [
            SvgPicture.asset(
              'images/share.svg',
            ),
            const SizedBox(
              width: 7,
            ),
            SvgPicture.asset(
              'images/print.svg',
            ),
            const SizedBox(
              width: 7,
            ),
            SvgPicture.asset(
              'images/notification.svg',
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
        floatingActionButton: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Payment()));
          },
          child: CircleAvatar(
            radius: 35,
            backgroundColor: Colors.grey.shade200,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xff2867AA),
              child: Icon(
                Icons.add,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: const DrawerWidgets(),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  width: double.infinity,
                  color: const Color(0xffEEEEFA),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: buttonColors1, width: 0.5)),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                          ),
                          hintText: ' Search',
                          hintStyle: TextStyle(fontSize: 16)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  
                  width: double.infinity,
                  color: const Color(0xffEDEDF9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ReusableText.reusableText(
                        title: 'Gajendra Sinh',
                        size: 13,
                      ),
                      Row(
                        children: const [
                          ReusableText.reusableText(
                            title: 'LSM. code:',
                            size: 13,
                          ),
                          ReusableText.reusableText(
                            title: '0001',
                            size: 13,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Table(
                  children: [
                    reusableTableRowDate(
                        fontSize: 9,
                        fontWeight: FontWeight.normal,
                        backgroundColor: buttonColors1,
                        textColor: whiteColor,
                        lst: [
                          'Date',
                          'QTY (ltr)',
                          'AMTOUNT',
                        ]),
                    reusableTableRow(
                        fontWeight: FontWeight.normal,
                        backgroundColor: const Color(0xffD4E2FE),
                        textColor: Colors.black,
                        fontSize: 13,
                        lst: [
                          '10/10/22',
                          '10',
                          '75.0',
                        ]),
                    reusableTableRow(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        backgroundColor: const Color(0xffEEF8FA),
                        textColor: Colors.black,
                        lst: [
                          '10/10/22',
                          '10',
                          '75.0',
                        ]),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 5),
                        color: const Color(0xffE8DAFE),
                        height: 30,
                        child: const ReusableText.reusableText(
                          title: 'Net QTY: 20 ltr',
                          weight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      height: 30,
                      color: const Color(0xffDAF8FE),
                      child: const Center(
                        child: ReusableText.reusableText(
                          title: 'Net AMT: 150.00',
                          weight: FontWeight.bold,
                        ),
                      ),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  color: const Color(0xffEDEDF9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ReusableText.reusableText(
                        title: 'Gajendra Sinh',
                        size: 13,
                      ),
                      Row(
                        children: const [
                          ReusableText.reusableText(
                            title: 'LSM. code:',
                            size: 13,
                          ),
                          ReusableText.reusableText(
                            title: '0001',
                            size: 13,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Table(
                  children: [
                    reusableTableRowDate(
                        fontSize: 9,
                        fontWeight: FontWeight.normal,
                        backgroundColor: buttonColors1,
                        textColor: whiteColor,
                        lst: [
                          'Date',
                          'QTY (ltr)',
                          'AMTOUNT',
                        ]),
                    reusableTableRow(
                        fontWeight: FontWeight.normal,
                        backgroundColor: const Color(0xffD4E2FE),
                        textColor: Colors.black,
                        fontSize: 13,
                        lst: [
                          '10/10/22',
                          '10',
                          '75.0',
                        ]),
                    reusableTableRow(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        backgroundColor: const Color(0xffEEF8FA),
                        textColor: Colors.black,
                        lst: [
                          '10/10/22',
                          '10',
                          '75.0',
                        ]),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 5),
                        color: const Color(0xffE8DAFE),
                        height: 30,
                        child: const ReusableText.reusableText(
                          title: 'Net QTY: 20 ltr',
                          weight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      height: 30,
                      color: const Color(0xffDAF8FE),
                      child: const Center(
                        child: ReusableText.reusableText(
                          title: 'Net AMT: 150.00',
                          weight: FontWeight.bold,
                        ),
                      ),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  color: const Color(0xffEDEDF9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ReusableText.reusableText(
                        title: 'Gajendra Sinh',
                        size: 13,
                      ),
                      Row(
                        children: const [
                          ReusableText.reusableText(
                            title: 'LSM. code:',
                            size: 13,
                          ),
                          ReusableText.reusableText(
                            title: '0001',
                            size: 13,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Table(
                  children: [
                    reusableTableRowDate(
                        fontSize: 9,
                        fontWeight: FontWeight.normal,
                        backgroundColor: buttonColors1,
                        textColor: whiteColor,
                        lst: [
                          'Date',
                          'QTY (ltr)',
                          'AMTOUNT',
                        ]),
                    reusableTableRow(
                        fontWeight: FontWeight.normal,
                        backgroundColor: const Color(0xffD4E2FE),
                        textColor: Colors.black,
                        fontSize: 13,
                        lst: [
                          '10/10/22',
                          '10',
                          '75.0',
                        ]),
                    reusableTableRow(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        backgroundColor: const Color(0xffEEF8FA),
                        textColor: Colors.black,
                        lst: [
                          '10/10/22',
                          '10',
                          '75.0',
                        ]),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 5),
                        color: const Color(0xffE8DAFE),
                        height: 30,
                        child: const ReusableText.reusableText(
                          title: 'Net QTY: 20 ltr',
                          weight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      height: 30,
                      color: const Color(0xffDAF8FE),
                      child: const Center(
                        child: ReusableText.reusableText(
                          title: 'Net AMT: 150.00',
                          weight: FontWeight.bold,
                        ),
                      ),
                    ))
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
