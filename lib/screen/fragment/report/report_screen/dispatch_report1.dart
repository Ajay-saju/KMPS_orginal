import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../utils/colors.dart';
import '../../../../../../utils/reusable_text.dart';
import '../../../../custom_widgets/table/table.dart';
import '../../../drawer_screen/drawer_widget.dart';

class DispatchReport extends StatefulWidget {
  const DispatchReport({Key? key}) : super(key: key);

  @override
  State<DispatchReport> createState() => _DispatchReportState();
}

class _DispatchReportState extends State<DispatchReport> {
  bool male = true;
  bool female = false;
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
    var appBar = AppBar(
      titleSpacing: 0,
      backgroundColor: Theme.of(context).primaryColor,
      title: const Text(
        'Dispatch Report',
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
      backgroundColor: whiteColor,
      appBar: appBar,
      drawer: const DrawerWidgets(),
      body: Align(
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
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
                  Table(
                      columnWidths: const {
                    0: FixedColumnWidth(90)
                  }, children: [
                    reusableTableRow(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        backgroundColor: buttonColors1,
                        textColor: whiteColor,
                        lst: [
                          'Date',
                          'Type',
                          'Qty',
                          'CAN',
                          'FAT',
                          'SNF',
                        ]),
                    reusableTableRow(
                        fontWeight: FontWeight.w600,
                        backgroundColor: const Color(0xffD4E2FE),
                        textColor: Colors.black,
                        fontSize: 13,
                        lst: [
                          '10/10/22',
                          'Buf',
                          '30.00',
                          '11',
                          '8.5',
                          '9.5',
                        ]),
                    reusableTableRow(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        backgroundColor: const Color(0xffEEF8FA),
                        textColor: Colors.black,
                        lst: [
                          '10/10/22',
                          'Cow',
                          '30.00',
                          '22',
                          '8.5',
                          '9.5',
                        ]),
                  ]),
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
                                  title: '2100.00 Ltr',
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
                                  title: 'Total CAN',
                                  weight: FontWeight.bold,
                                  color: Colors.black),
                              ReusableText.reusableText(
                                  size: 17,
                                  title: '150',
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
      ),
    );
  }
}
