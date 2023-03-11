import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/colors.dart';
import '../../../utils/reusable_text.dart';
import '../drawer_widget.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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

  String dropdownvalue = 'Jigar Rabari';
  var items = [
    'Jigar Rabari',
    'Jigar Rabari 1',
    'Jigar Rabari 2',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text(
            'Payment',
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
                    const SizedBox(width: 10,),
                    const ReusableText.reusableText(
                      title: 'To',
                    ),
                    const SizedBox(width: 10,),
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
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
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
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                color: const Color(0xffD4E2FE),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: whiteColor,
                            border:
                            Border.all(color: Colors.grey, width: 0.5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            ReusableText.reusableText(
                              title: 'Qty(ltr)',
                              size: 17,
                              weight: FontWeight.w500,
                              color: buttonColors1,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: '00.00',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 25)),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: whiteColor,
                            border:
                            Border.all(color: Colors.grey, width: 0.5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            ReusableText.reusableText(
                              title: 'Amount',
                              size: 17,
                              weight: FontWeight.w500,
                              color: buttonColors1,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: '0000.00',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 25)),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 35,
                        width: 330,
                        color: buttonColors1,
                        child: const Center(
                          child: ReusableText.reusableText(
                            title: 'Pay Now',
                            color: whiteColor,
                            size: 16,
                            weight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10,),
                  ],
                ),
              ),

            ],
          ),
        ));
  }
}
