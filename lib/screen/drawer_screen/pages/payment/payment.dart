import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/reusable_text.dart';
import '../../../drawer_screen/drawer_widget.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String dropdownvalue = 'Jigar Rabari';
  var items = [
    'Jigar Rabari',
    'Jigar Rabari 1',
    'Jigar Rabari 2',
  ];
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
          title: 'Payment',
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
      body: ListView(
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
          SizedBox(
            height: 20,
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
          SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            height: 200,
            width: double.infinity,
            color: const Color(0xff0ffD4E2FE),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            border: Border.all(color: Colors.grey, width: 0.5)),
                        height: 90,
                        width: 160,
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
                                      color: Colors.grey,
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
                        decoration: BoxDecoration(
                            color: whiteColor,
                            border: Border.all(color: Colors.grey, width: 0.5)),
                        height: 90,
                        width: 180,
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
                                      color: Colors.grey,
                                      fontSize: 25)),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 35,
                    width: double.infinity,
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
