import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../custom_widgets/table/table.dart';
import '../../../../../custom_widgets/table/table_with_underline.dart';
import '../../../../../utils/colors.dart';
import '../../../../../utils/reusable_text.dart';
import '../drawer_widget.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  bool m = true;
  bool e = false;
  DateTime selectedDate = DateTime.now();
  showDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    ).then((value) {
      setState(() {
        selectedDate = value!;
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
        title: const Text(
          'Shift Report',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 60,
              width: double.infinity,
              color: whiteColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      showDate();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: 45,
                      width: 160,
                      decoration:
                          BoxDecoration(border: Border.all(color: buttonColors1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText.reusableText(
                            title:
                                "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}",
                          ),
                          SvgPicture.asset(
                            'images/calender.svg',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 120,
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: buttonColors1, width: 1.5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              m = true;
                              e = false;
                            });
                          },
                          child: Container(
                            height: 35,
                            width: 53,
                            decoration: BoxDecoration(
                              color: m ? buttonColors1 : Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              // border:
                              //     Border.all(color: buttonColors1, width: 1.5),
                            ),
                            child: Center(
                              child: ReusableText.reusableText(
                                size: 18,
                                weight: FontWeight.bold,
                                color: m ? Colors.white : buttonColors1,
                                title: 'M',
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              e = true;
                              m = false;
                            });
                          },
                          child: Container(
                            height: 35,
                            width: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: e ? const Color(0xff0D4179) : Colors.white,
                              // border:
                              //     Border.all(color: buttonColors1, width: 1.5),
                            ),
                            child: Center(
                              child: ReusableText.reusableText(
                                title: 'E',
                                color: e ? Colors.white : buttonColors1,
                                weight: FontWeight.bold,
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ReusableText.reusableText(
              title: 'Soc.Code: 15583',
              weight: FontWeight.bold,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 7.0,
                right: 7,
                top: 10,
              ),
              child: Table(
                children: [
                  reusableTableRow(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      backgroundColor: buttonColors1,
                      textColor: whiteColor,
                      lst: ['M.COD', 'Qty', 'Type', 'FAT', 'SNF', 'Rate', 'Amt']),
                  reusableTableRow(
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffD4E2FE),
                      textColor: Colors.black,
                      fontSize: 13,
                      lst: [
                        '0001',
                        '30.00',
                        'Buf',
                        '8.5',
                        '9.5',
                        '40.5',
                        '1215'
                      ]),
                  reusableTableRow(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffEEF8FA),
                      textColor: Colors.black,
                      lst: [
                        '0002',
                        '30.00',
                        'Cow',
                        '8.5',
                        '9.5',
                        '30.5',
                        '1215'
                      ]),
                  reusableTableRow(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffD4E2FE),
                      textColor: Colors.black,
                      lst: [
                        '0051',
                        '30.00',
                        'Buf',
                        '8.5',
                        '9.5',
                        '40.5',
                        '1212'
                      ]),
                  reusableTableRow(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffEEF8FA),
                      textColor: Colors.black,
                      lst: [
                        '0085',
                        '30.00',
                        'Buf',
                        '8.5',
                        '9.5',
                        '40.5',
                        '1212'
                      ]),
                  reusableTableRow(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffD4E2FE),
                      textColor: Colors.black,
                      lst: [
                        '1200',
                        '10.00',
                        'Buf',
                        '8.5',
                        '9.5',
                        '40.5',
                        '1212'
                      ]),
                  reusableTableRow(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffEEF8FA),
                      textColor: Colors.black,
                      lst: [
                        '1025',
                        '30.00',
                        'Buf',
                        '8.5',
                        '9.5',
                        '40.5',
                        '1212'
                      ]),
                  reusableTableRow(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffD4E2FE),
                      textColor: Colors.black,
                      lst: [
                        '2002',
                        '30.00',
                        'Buf',
                        '8.5',
                        '9.5',
                        '40.5',
                        '1212'
                      ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 7.0,
                right: 7,
              ),
              child: Container(
                height: 30,
                width: double.infinity,
                color: Colors.grey.shade200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 7.0,
                right: 7,
              ),
              child: Table(
                children: [
                  reusableTableRowWithLine(
                      borderColor: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.white,
                      textColor: buttonColors1,
                      lst: ['Type', 'Qty', 'FAT', 'SNF', 'AMT']),
                  reusableTableRowWithLine(
                      borderColor: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      lst: ['Cow', '30', '8', '7.5', '1215']),
                  reusableTableRowWithLine(
                      borderColor: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      lst: [
                        'Buf',
                        '30',
                        '9',
                        '8',
                        '7290',
                      ]),
                  reusableTableRowWithLine(
                      borderColor: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      backgroundColor: const Color(0xff929292),
                      textColor: whiteColor,
                      lst: [
                        'Total',
                        '210',
                        '8.5',
                        '7.75',
                        '8505',
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
