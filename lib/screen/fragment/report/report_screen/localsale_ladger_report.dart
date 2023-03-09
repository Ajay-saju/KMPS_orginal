import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kmps/custom_widgets/table/table_with_divider.dart';
import 'package:kmps/utils/colors.dart';

import '../../../../custom_widgets/table/table.dart';
import '../../../../utils/reusable_text.dart';
import '../../../drawer_screen/drawer_widget.dart';

class LocalSaleLadgerReport extends StatefulWidget {
  const LocalSaleLadgerReport({Key? key}) : super(key: key);

  @override
  State<LocalSaleLadgerReport> createState() => _LocalSaleLadgerReportState();
}

class _LocalSaleLadgerReportState extends State<LocalSaleLadgerReport> {
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
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const ReusableText.reusableText(
          title: 'Local Sale Ledger Report',
          size: 16,
        ),
        actions: [
          SizedBox(width: 10,),
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
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.16,
                      alignment: Alignment.topCenter,
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
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      color: const Color(0xffFED4D6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ReusableText.reusableText(
                            title: 'Gajendra Sinh',
                            size: 13,
                            weight: FontWeight.bold,
                          ),
                          Row(
                            children: const [
                              ReusableText.reusableText(
                                title: 'LSM. code:',
                                size: 13,
                                weight: FontWeight.bold,
                              ),
                              ReusableText.reusableText(
                                title: '0001',
                                size: 13,
                                weight: FontWeight.bold,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Table(
                      columnWidths: const {
                        // 0: FixedColumnWidth(85),
                        // 4: FixedColumnWidth(80),
                        // 1: FixedColumnWidth(70),
                        // 2: FixedColumnWidth(70),
                        // 3: FixedColumnWidth(75),
                        // 4: FixedColumnWidth(75),
                      },
                      children: [
                        reusableTableRowDate(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            backgroundColor: buttonColors1,
                            textColor: whiteColor,
                            lst: [
                              'Date',
                              'Shift',
                              'Type',
                              'Qty',
                              'AMT',
                            ]),
                        reusableTableRow(
                            fontWeight: FontWeight.w600,
                            backgroundColor: const Color(0xffD4E2FE),
                            textColor: Colors.black,
                            fontSize: 13,
                            lst: [
                              '10/10/22',
                              'M',
                              'Buf',
                              '3850.00',
                              '75800.00',
                            ]),
                        reusableTableRow(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            backgroundColor: const Color(0xffEEF8FA),
                            textColor: Colors.black,
                            lst: [
                              '10/10/22',
                              '30.00',
                              'Cow',
                              '3850.00',
                              '75800.00',
                            ]),
                        reusableTableRow(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            backgroundColor: const Color(0xffD4E2FE),
                            textColor: Colors.black,
                            lst: [
                              '11/10/22',
                              '30.00',
                              'Buf',
                              '3850.00',
                              '75800.00',
                            ]),
                        reusableTableRow(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            backgroundColor: const Color(0xffEEF8FA),
                            textColor: Colors.black,
                            lst: [
                              '11/10/22',
                              '30.00',
                              'Buf',
                              '3850.00',
                              '75800.00',
                            ]),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            color: const Color(0xffE8DAFE),
                            height: 30,
                            child: const ReusableText.reusableText(
                              title: 'Net QTY: 85258 ltr',
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
                                  title: 'Net AMT: 8799985.00',
                                  weight: FontWeight.bold,
                                ),
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      color: const Color(0xffFED4D6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ReusableText.reusableText(
                            title: 'Gajendra Sinh',
                            size: 13,
                            weight: FontWeight.bold,
                          ),
                          Row(
                            children: const [
                              ReusableText.reusableText(
                                title: 'LSM. code:',
                                size: 13,
                                weight: FontWeight.bold,
                              ),
                              ReusableText.reusableText(
                                title: '0001',
                                size: 13,
                                weight: FontWeight.bold,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Table(
                      columnWidths: {
                        // 0: FixedColumnWidth(85),
                        // 4: FixedColumnWidth(80),
                        // 0: FixedColumnWidth(80),
                        // 1: FixedColumnWidth(70),
                        // 2: FixedColumnWidth(70),
                        // 3: FixedColumnWidth(75),
                        // 4: FixedColumnWidth(75),
                      },
                      children: [
                        reusableTableRowDate(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            backgroundColor: buttonColors1,
                            textColor: whiteColor,
                            lst: [
                              'Date',
                              'Shift',
                              'Type',
                              'Qty',
                              'AMT',
                            ]),
                        reusableTableRow(
                            fontWeight: FontWeight.w600,
                            backgroundColor: const Color(0xffD4E2FE),
                            textColor: Colors.black,
                            fontSize: 13,
                            lst: [
                              '10/10/22',
                              'M',
                              'Buf',
                              '3850.00',
                              '75800.00',
                            ]),
                        reusableTableRow(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            backgroundColor: const Color(0xffEEF8FA),
                            textColor: Colors.black,
                            lst: [
                              '10/10/22',
                              '30.00',
                              'Cow',
                              '3850.00',
                              '75800.00',
                            ]),
                        reusableTableRow(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            backgroundColor: const Color(0xffD4E2FE),
                            textColor: Colors.black,
                            lst: [
                              '11/10/22',
                              '30.00',
                              'Buf',
                              '3850.00',
                              '75800.00',
                            ]),
                        reusableTableRow(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            backgroundColor: const Color(0xffEEF8FA),
                            textColor: Colors.black,
                            lst: [
                              '11/10/22',
                              '30.00',
                              'Buf',
                              '3850.00',
                              '75800.00',
                            ]),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            color: const Color(0xffE8DAFE),
                            height: 30,
                            child: const ReusableText.reusableText(
                              title: 'Net QTY: 85258 ltr',
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
                                  title: 'Net AMT: 8799985.00',
                                  weight: FontWeight.bold,
                                ),
                              ),
                            ))
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
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
                            padding: EdgeInsets.all(10),
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
                                    title: '₹ 8333505',
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
                Padding(
                  padding: EdgeInsets.only(top: 65, left: 0, right: 0),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 75),
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                        color: whiteColor,
                        border: Border.all(color: buttonColors1, width: 0.5)),
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: TextField(
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
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
