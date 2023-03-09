import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../custom_widgets/table/table.dart';
import '../../../utils/colors.dart';
import '../../../utils/reusable_text.dart';
import '../../drawer_screen/drawer_widget.dart';

class CreateDispatch extends StatefulWidget {
  const CreateDispatch({Key? key}) : super(key: key);

  @override
  State<CreateDispatch> createState() => _CreateDispatchState();
}

class _CreateDispatchState extends State<CreateDispatch> {
  bool m = true;

  bool cow = true;
  bool buffalo = false;
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          actions: [
            SvgPicture.asset(
              'images/notification.svg',
            ),
            const SizedBox(
              width: 20,
            )
          ],
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text('Create Dispatch'),
        ),
        drawer: const DrawerWidgets(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:  EdgeInsets.symmetric(horizontal: 0.02 * width,vertical: 0.01 * height),

                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child
                          : const ReusableText.reusableText(
                        title: 'MANAN DESAI JNG [123]',
                        weight: FontWeight.bold,
                        size: 17,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            m = !m;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          // height: 45,
                          // width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: buttonColors1)),
                          child: Container(

                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: m
                                  ? const Color(0xff0D4179)
                                  : Colors.grey.shade300,
                              // border:
                              //     Border.all(color: buttonColors1, width: 1.5),
                            ),
                            child: Center(
                              child: ReusableText.reusableText(
                                title: 'M',
                                color: m ? Colors.white : buttonColors1,
                                weight: FontWeight.bold,
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                // height: 320,
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
                            padding: EdgeInsets.all(10),
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
                            padding: EdgeInsets.all(8),
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
                                          color: Colors.grey,
                                          fontSize: 25)),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'FAT',
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),

                                child: const Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        border: InputBorder.none,
                                        hintText: '00.00',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 17)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'SNF',
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(

                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),
                                child: const Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        border: InputBorder.none,
                                        hintText: '00.00',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 17)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'CAN',
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),
                                child: const Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        border: InputBorder.none,
                                        hintText: '0',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 17)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 35,
                        width: double.infinity,
                        color: buttonColors1,
                        child: const Center(
                          child: ReusableText.reusableText(
                            title: 'Save',
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
              const SizedBox(
                height: 20,
              ),
              const ReusableText.reusableText(
                title: 'DISPATCH SUMMARY',
                weight: FontWeight.bold,
                size: 18,
              ),
              Padding(
                padding:
                    const EdgeInsets.all(10),
                child: Table(columnWidths: const {
                  0: FixedColumnWidth(90),
                  5: FixedColumnWidth(80)
                }, children: [
                  reusableTableRow(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      backgroundColor: buttonColors1,
                      textColor: whiteColor,
                      lst: ['Date', 'Type', 'FAT', 'SNF', 'Amount']),
                  reusableTableRow(
                      fontWeight: FontWeight.normal,
                      backgroundColor: const Color(0xffD4E2FE),
                      textColor: Colors.black,
                      fontSize: 13,
                      lst: [
                        '09/01/23 M',
                        '10.00',
                        '8.5',
                        '-',
                        '405.00',
                      ]),
                  reusableTableRow(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      backgroundColor: const Color(0xffEEF8FA),
                      textColor: Colors.black,
                      lst: [
                        '09/01/23 E',
                        '10.00',
                        '8.5',
                        '-',
                        '405.00',
                      ]),
                ]),
              ),
            ],
          ),
        ));
  }
}
