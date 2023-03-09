import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../custom_widgets/table/table.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/reusable_text.dart';
import '../../../drawer_screen/drawer_widget.dart';

class PaymentReport extends StatefulWidget {
  const PaymentReport({Key? key}) : super(key: key);

  @override
  State<PaymentReport> createState() => _PaymentReportState();
}

class _PaymentReportState extends State<PaymentReport> {
  DateTime selectedDateFrom = DateTime.now();
  DateTime selectedDateTo = DateTime.now();
  showDateFrom() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    ).then((value) {
      setState(() {
        selectedDateFrom = value!;
      });
    });
  }

  showDateTo() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    ).then((value) {
      setState(() {
        selectedDateTo = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColor,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Payment Report',
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
      drawer: const DrawerWidgets(),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [

                Container(
                  padding: const EdgeInsets.all(10),
                  // height: 60,
                  width: double.infinity,
                  color: const Color(0xffEEEEFA),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          showDateFrom();
                        },
                        child: Container(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          // height: 35,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              border: Border.all(color: buttonColors1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ReusableText.reusableText(
                                title:
                                "${selectedDateFrom.day}-${selectedDateFrom.month}-${selectedDateFrom.year}",
                              ),
                              SvgPicture.asset(
                                'images/calender.svg',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      const ReusableText.reusableText(
                        title: 'To',
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: () {
                          showDateTo();
                        },
                        child: Container(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              border: Border.all(color: buttonColors1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ReusableText.reusableText(
                                title:
                                "${selectedDateTo.day}-${selectedDateTo.month}-${selectedDateTo.year}",
                              ),
                              SvgPicture.asset(
                                'images/calender.svg',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: buttonColors1, width: 0.5)),
                  child: const TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(left: 10, top: 10),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                        hintText: ' Search',
                        hintStyle: TextStyle(fontSize: 18)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Table(
                    columnWidths: const {
                  // 0: FixedColumnWidth(70),
                  1: FixedColumnWidth(60),
                  // 2: FixedColumnWidth(70),
                  // 3: FixedColumnWidth(67),
                  // 4: FixedColumnWidth(67),
                },
                    children: [
                  reusableTableRow(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      backgroundColor: buttonColors1,
                      textColor: whiteColor,
                      lst: [
                        'Member',
                        'Pay.Dt',
                        'Form Dt',
                        'T0 Dt',
                        'Qty',
                        'Amt',
                      ]),
                  reusableTableRow(
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffD4E2FE),
                      textColor: Colors.black,
                      fontSize: 13,
                      lst: [
                        'Manan',
                        '10/10/22',
                        '29/Oct',
                        '9-Dec',
                        '30.00',
                        '1215',
                      ]),
                  reusableTableRow(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffEEF8FA),
                      textColor: Colors.black,
                      lst: [
                        'Rakesh',
                        '10/10/23',
                        '29/Oct',
                        '9-Dec',
                        '30.00',
                        '1215',
                      ]),
                  reusableTableRow(
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffD4E2FE),
                      textColor: Colors.black,
                      fontSize: 13,
                      lst: [
                        'Rakesh',
                        '10/10/22',
                        '29/Oct',
                        '9-Dec',
                        '30.00',
                        '1215',
                      ]),
                  reusableTableRow(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffEEF8FA),
                      textColor: Colors.black,
                      lst: [
                        'Jayesh',
                        '10/10/22',
                        '29/Oct',
                        '9-Dec',
                        '30.00',
                        '1215',
                      ]),
                  reusableTableRow(
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffD4E2FE),
                      textColor: Colors.black,
                      fontSize: 13,
                      lst: [
                        'Vinod',
                        '10/10/22',
                        '29/Oct',
                        '9-Dec',
                        '30.00',
                        '1215',
                      ]),
                  reusableTableRow(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffEEF8FA),
                      textColor: Colors.black,
                      lst: [
                        'Mulchand',
                        '10/10/22',
                        '29/Oct',
                        '9-Dec',
                        '30.00',
                        '1215',
                      ]),
                  reusableTableRow(
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffD4E2FE),
                      textColor: Colors.black,
                      fontSize: 13,
                      lst: [
                        'Bhagirath',
                        '10/10/22',
                        '29/Oct',
                        '9-Dec',
                        '30.00',
                        '1215',
                      ]),
                  reusableTableRow(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffEEF8FA),
                      textColor: Colors.black,
                      lst: [
                        'Vinay',
                        '10/10/22',
                        '29/Oct',
                        '9-Dec',
                        '30.00',
                        '1215',
                      ]),
                ]),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: const Color(0xffE8DAFE),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            ReusableText.reusableText(
                                size: 17,
                                title: 'Total Quantity',
                                weight: FontWeight.bold,
                                color: Colors.black),
                            ReusableText.reusableText(
                                size: 17,
                                title: '21.00 ltr',
                                weight: FontWeight.bold,
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: const Color(0xffC0F1FD),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            ReusableText.reusableText(
                                size: 17,
                                title: 'Total Payment',
                                weight: FontWeight.bold,
                                color: Colors.black),
                            ReusableText.reusableText(
                                size: 17,
                                title: 'Rs. 8,505.00',
                                weight: FontWeight.bold,
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
