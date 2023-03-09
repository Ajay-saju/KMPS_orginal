import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../custom_widgets/table/table.dart';
import '../../../../../../utils/colors.dart';
import '../../../../../../utils/reusable_text.dart';
import '../../../drawer_screen/drawer_widget.dart';

class CollectionSummary extends StatefulWidget {
  const CollectionSummary({Key? key}) : super(key: key);

  @override
  State<CollectionSummary> createState() => _CollectionSummaryState();
}

class _CollectionSummaryState extends State<CollectionSummary> {
  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const ReusableText.reusableText(
          textAlign: TextAlign.left,
          title: 'Collection Summary',
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  // height: 25,
                  color: Color(0xffEAEAF6),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ReusableText.reusableText(
                          title: 'Date: 10/10/2022',

                        ),
                      ),

                      Table(columnWidths: const {}, children: [
                        reusableTableRow(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            backgroundColor: buttonColors1,
                            textColor: whiteColor,
                            lst: [
                              'M.code',
                              'Qty',
                              'Type',
                              'FAT',
                              'SNF',
                              'Rate',
                              'Amt',
                            ]),
                        reusableTableRow(
                            fontWeight: FontWeight.w600,
                            backgroundColor: const Color(0xffD4E2FE),
                            textColor: Colors.black,
                            fontSize: 12,
                            lst: ['125', '30.00', 'Buf', '8.5', '9.5', '40.5', '1215']),
                        reusableTableRow(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            backgroundColor: const Color(0xffEEF8FA),
                            textColor: Colors.black,
                            lst: ['485', '30.00', 'Cow', '8.5', '9.5', '40.5', '1215']),
                      ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  // height: 25,
                  color: Color(0xffEAEAF6),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ReusableText.reusableText(
                          title: 'Date: 10/10/2022',

                        ),
                      ),

                      Table(columnWidths: const {}, children: [
                        reusableTableRow(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            backgroundColor: buttonColors1,
                            textColor: whiteColor,
                            lst: [
                              'M.code',
                              'Qty',
                              'Type',
                              'FAT',
                              'SNF',
                              'Rate',
                              'Amt',
                            ]),
                        reusableTableRow(
                            fontWeight: FontWeight.w600,
                            backgroundColor: const Color(0xffD4E2FE),
                            textColor: Colors.black,
                            fontSize: 12,
                            lst: ['125', '30.00', 'Buf', '8.5', '9.5', '40.5', '1215']),
                        reusableTableRow(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            backgroundColor: const Color(0xffEEF8FA),
                            textColor: Colors.black,
                            lst: ['485', '30.00', 'Cow', '8.5', '9.5', '40.5', '1215']),
                      ]),
                    ],
                  ),
                ),
                Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Container(
                        color: const Color(0xffE8DAFE),
                        padding: EdgeInsets.all(10),
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
                                title: '60.00 Ltr',
                                weight: FontWeight.bold,
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: const Color(0xffC0F1FD),
                        padding: EdgeInsets.all(10),
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
                                title: 'Rs.6075.00 ltr',
                                weight: FontWeight.bold,
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
