import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../custom_widgets/table/table.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/reusable_text.dart';
import '../../../drawer_screen/drawer_widget.dart';

class MemberLedger extends StatefulWidget {
  const MemberLedger({Key? key}) : super(key: key);

  @override
  State<MemberLedger> createState() => _MemberLedgerState();
}

class _MemberLedgerState extends State<MemberLedger> {
  String dropdownvalue = 'Jigar Rabari';
  var items = [
    'Jigar Rabari',
    'Jigar Rabari 1',
    'Jigar Rabari 2',
  ];

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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Member Ledger',
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
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  color: h1Color,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(

                          height: MediaQuery.of(context).size.height * 0.08,
                          decoration:
                          BoxDecoration(border: Border.all(color: buttonColors1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                child: Center(
                                  child: ReusableText.reusableText(
                                    title: 'M.Code',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(

                                  padding: const EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: const Center(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          isDense: true,
                                          contentPadding: EdgeInsets.only(
                                            left: 5,
                                          ),
                                          border: InputBorder.none,
                                          hintText: 'OO00',
                                          hintStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    // ReusableText.reusableText(
                                    //   title: '0001',
                                    // ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: whiteColor,
                                border: Border.all(color: buttonColors1)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(

                                // isExpanded: true,
                                value: dropdownvalue,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    dropdownvalue = value!;
                                  });
                                },
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  showDateFrom();
                },
                child: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
            ),
            SizedBox(width: 20,),
            const ReusableText.reusableText(
              title: 'To',
            ),
            SizedBox(width: 20,),
            Expanded(
              child: InkWell(
                onTap: () {
                  showDateTo();
                },
                child: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
            ),
          ],
        ),
      ),
                const ReusableText.reusableText(
                  title: 'Soc.Code: 15583',
                  weight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 8,
                ),
                Table(
                  columnWidths: const {0: FixedColumnWidth(80)},
                  children: [
                    reusableTableRow(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        backgroundColor: buttonColors1,
                        textColor: whiteColor,
                        lst: ['Date', 'Qty', 'Type', 'FAT', 'SNF', 'Rate', 'Amt']),
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
                          '40.5',
                          '1215'
                        ]),
                    reusableTableRow(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        backgroundColor: const Color(0xffEEF8FA),
                        textColor: Colors.black,
                        lst: [
                          '11/10/22(M)',
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
                          '12/10/22(M)',
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
                          '13/10/22(E)',
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
                          '14/10/22(E)',
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
                          '15/10/22(M)',
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
                          '16/10/22(M)',
                          '30.00',
                          'Buf',
                          '8.5',
                          '9.5',
                          '40.5',
                          '1212'
                        ]),
                  ],
                ),
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
                                title: '210.00 Ltr',
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
                                title: 'RS. 8505',
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
