import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../custom_widgets/table/table.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/reusable_text.dart';
import '../../../drawer_screen/drawer_widget.dart';

class Dispatch extends StatefulWidget {
  const Dispatch({Key? key}) : super(key: key);

  @override
  State<Dispatch> createState() => _DispatchState();
}

class _DispatchState extends State<Dispatch> {
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
      ),
      drawer: const DrawerWidgets(),
      body: Column(
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
                    showDateFrom();
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    height: 40,
                    width: 140,
                    decoration:
                        BoxDecoration(border: Border.all(color: buttonColors1)),
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
                    height: 40,
                    width: 140,
                    decoration:
                        BoxDecoration(border: Border.all(color: buttonColors1)),
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
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
            ),
            child: Table(columnWidths: const {
              0: FixedColumnWidth(100)
            }, children: [
              reusableTableRow(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  backgroundColor: buttonColors1,
                  textColor: whiteColor,
                  lst: [
                    'Date',
                    'Qty',
                    'CAN',
                    'FAT',
                    'SNF',
                  ]),
              reusableTableRow(
                  fontWeight: FontWeight.w600,
                  backgroundColor: Color(0xffD4E2FE),
                  textColor: Colors.black,
                  fontSize: 13,
                  lst: [
                    '10/10/22(E)',
                    '30.00',
                    'Buf',
                    '8.5',
                    '9.5',
                  ]),
              reusableTableRow(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  backgroundColor: const Color(0xffEEF8FA),
                  textColor: Colors.black,
                  lst: [
                    '10/10/22(M)',
                    '30.00',
                    'Cow',
                    '8.5',
                    '9.5',
                  ]),
              reusableTableRow(
                  fontWeight: FontWeight.w600,
                  backgroundColor: const Color(0xffD4E2FE),
                  textColor: Colors.black,
                  fontSize: 13,
                  lst: [
                    '10/10/22(E)',
                    '30.00',
                    'Buf',
                    '8.5',
                    '9.5',
                  ]),
              reusableTableRow(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  backgroundColor: const Color(0xffEEF8FA),
                  textColor: Colors.black,
                  lst: [
                    '10/10/22(E)',
                    '30.00',
                    'Cow',
                    '8.5',
                    '9.5',
                  ]),
              reusableTableRow(
                  fontWeight: FontWeight.w600,
                  backgroundColor: const Color(0xffD4E2FE),
                  textColor: Colors.black,
                  fontSize: 13,
                  lst: [
                    '10/10/22(E)',
                    '30.00',
                    'Buf',
                    '8.5',
                    '9.5',
                  ]),
              reusableTableRow(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  backgroundColor: Color(0xffEEF8FA),
                  textColor: Colors.black,
                  lst: [
                    '10/10/22(E)',
                    '30.00',
                    'Cow',
                    '8.5',
                    '9.5',
                  ]),
              reusableTableRow(
                  fontWeight: FontWeight.w600,
                  backgroundColor: const Color(0xffD4E2FE),
                  textColor: Colors.black,
                  fontSize: 12,
                  lst: [
                    '10/10/22(E)',
                    '30.00',
                    'Buf',
                    '8.5',
                    '9.5',
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
                            title: '2100.00 Ltr',
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
            ),
          )
        ],
      ),
    );
  }
}
