import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../custom_widgets/table/table.dart';
import '../../../../custom_widgets/table/table_with_underline.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/reusable_text.dart';
import '../../../drawer_screen/drawer_widget.dart';

class ShiftReport extends StatefulWidget {
  const ShiftReport({Key? key}) : super(key: key);

  @override
  State<ShiftReport> createState() => _ShiftReportState();
}

class _ShiftReportState extends State<ShiftReport> {
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

  bool male = true;
  bool female = false;
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
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
    );
    var height = MediaQuery.of(context).size.height - appBar.preferredSize.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(

      backgroundColor: backgroundColor,
      appBar: appBar,
      drawer: const DrawerWidgets(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      showDate();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: width * 0.4,
                      height: height * 0.06,
                      decoration: BoxDecoration(
                          border: Border.all(color: buttonColors1)),
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

                    padding: const EdgeInsets.all(2),
                    width: width * 0.23,
                    height:height * 0.06,
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(30),
                        border:
                        Border.all(color: buttonColors1, width: 1.5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                male = true;
                                female = false;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: male ? buttonColors1 : Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                // border:
                                //     Border.all(color: buttonColors1, width: 1.5),
                              ),
                              child: Center(
                                child: ReusableText.reusableText(
                                  size: 18,
                                  weight: FontWeight.bold,
                                  color: male ? Colors.white : buttonColors1,
                                  title: 'M',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                female = true;
                                male = false;
                              });
                            },
                            child: Container(

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: female
                                    ? const Color(0xff0D4179)
                                    : Colors.white,
                                // border:
                                //     Border.all(color: buttonColors1, width: 1.5),
                              ),
                              child: Center(
                                child: ReusableText.reusableText(
                                  title: 'E',
                                  color:
                                  female ? Colors.white : buttonColors1,
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
              ),
            ),
            const SizedBox(height: 20,),

            const ReusableText.reusableText(
              title: 'Soc.Code: 15583',
              weight: FontWeight.bold,
            ),
            SizedBox(height: 10,),
            Table(
              children: [
                reusableTableRow(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    backgroundColor: buttonColors1,
                    textColor: whiteColor,
                    lst: [
                      'M.COD',
                      'Qty',
                      'Type',
                      'FAT',
                      'SNF',
                      'Rate',
                      'Amt'
                    ]),
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
            Container(
              height: 30,
              width: double.infinity,
              color: Colors.grey.shade200,
            ),
            Table(
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
          ],
        ),
      ),
    );
  }
}
