import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../custom_widgets/table/table.dart';
import '../../../../../utils/colors.dart';
import '../../../../../utils/reusable_text.dart';
import '../drawer_widget.dart';

class LocalSaleLedger extends StatefulWidget {
  const LocalSaleLedger({Key? key}) : super(key: key);

  @override
  State<LocalSaleLedger> createState() => _LocalSaleLedgerState();
}

class _LocalSaleLedgerState extends State<LocalSaleLedger> {
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
      backgroundColor: whiteColor,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const ReusableText.reusableText(
          textAlign: TextAlign.left,
          title: 'Local Sale Ledger',
          size: 17,
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
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 60,
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
                          height: 35,
                          width: 160,
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
                      const ReusableText.reusableText(
                        title: 'To',
                      ),
                      InkWell(
                        onTap: () {
                          showDateTo();
                        },
                        child: Container(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          height: 35,
                          width: 160,
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
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 320,
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
                        hintText: '   Search by bill no.',
                        hintStyle: TextStyle(fontSize: 18)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 7.0,
                    right: 7,
                    top: 5,
                  ),
                  child: Table(columnWidths: const {
                    0: FixedColumnWidth(80),
                    5: FixedColumnWidth(80),
                  }, children: [
                    reusableTableRow(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        backgroundColor: buttonColors1,
                        textColor: whiteColor,
                        lst: [
                          'Date',
                          'Bill No.',
                          'Type',
                          'QTY',
                          'Rate',
                          'Amt',
                        ]),
                    reusableTableRow(
                        fontWeight: FontWeight.w600,
                        backgroundColor: const Color(0xffD4E2FE),
                        textColor: Colors.black,
                        fontSize: 12,
                        lst: [
                          '10/10/22',
                          '1234',
                          'Buf',
                          '3850.00',
                          '8.5',
                          '78500.00'
                        ]),
                    reusableTableRow(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        backgroundColor: const Color(0xffEEF8FA),
                        textColor: Colors.black,
                        lst: [
                          '10/10/22',
                          '1234',
                          'Buf',
                          '3850.00',
                          '8.5',
                          '78500.00'
                        ]),
                    reusableTableRow(
                        fontWeight: FontWeight.w600,
                        backgroundColor: const Color(0xffD4E2FE),
                        textColor: Colors.black,
                        fontSize: 12,
                        lst: [
                          '10/10/22',
                          '1234',
                          'Buf',
                          '3850.00',
                          '8.5',
                          '78500.00'
                        ]),
                    reusableTableRow(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        backgroundColor: const Color(0xffEEF8FA),
                        textColor: Colors.black,
                        lst: [
                          '10/10/22',
                          '1234',
                          'Buf',
                          '3850.00',
                          '8.5',
                          '78500.00'
                        ]),
                  ]),
                ),
                const Spacer(),
                Container(
                  height: 55,
                  width: double.infinity,
                  color: whiteColor,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
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
                                  title: '2103333.00 ltr',
                                  weight: FontWeight.bold,
                                  color: Colors.black),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
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
                                  title: 'Rs. 8333505',
                                  weight: FontWeight.bold,
                                  color: Colors.black),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
