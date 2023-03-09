import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/reusable_text.dart';
import '../../../custom_widgets/table/table.dart';
import '../../drawer_screen/drawer_widget.dart';
import 'createdispatch.dart';

class DispatchFragment extends StatefulWidget {
  const DispatchFragment({Key? key}) : super(key: key);

  @override
  State<DispatchFragment> createState() => _DispatchFragmentState();
}

class _DispatchFragmentState extends State<DispatchFragment> {
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
          'Dispatch',
        ),
        actions: [
          SvgPicture.asset(
            'images/print.svg',
          ),
          const SizedBox(width: 7),
          SvgPicture.asset(
            'images/notification.svg',
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CreateDispatch()));
        },
        child: CircleAvatar(
          radius: 35,
          backgroundColor: Colors.grey.shade200,
          child: const CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xff2867AA),
            child: Icon(
              Icons.add,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const DrawerWidgets(),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
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
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.06,
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
                      width: MediaQuery.of(context).size.width * 0.23,
                      height: MediaQuery.of(context).size.height * 0.06,
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
                                  m = true;
                                  e = false;
                                });
                              },
                              child: Container(
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
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  e = true;
                                  m = false;
                                });
                              },
                              child: Container(

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: e
                                      ? const Color(0xff0D4179)
                                      : Colors.white,
                                  // border:
                                  //     Border.all(color: buttonColors1, width: 1.5),
                                ),
                                child: Center(
                                  child: ReusableText.reusableText(
                                    title: 'E',
                                    color:
                                    e ? Colors.white : buttonColors1,
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

              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Table(columnWidths: const {
                  0: FixedColumnWidth(85),
                  1: FixedColumnWidth(90),
                  5: FixedColumnWidth(70)
                }, children: [
                  reusableTableRow(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      backgroundColor: buttonColors1,
                      textColor: whiteColor,
                      lst: [
                        'Qty(Ltr)',
                        'CAN',
                        'FAT',
                        'SNF',
                        'AMT',
                      ]),
                  reusableTableRow(
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffD4E2FE),
                      textColor: Colors.black,
                      fontSize: 13,
                      lst: [
                        '30.00',
                        '11',
                        '8.5',
                        '9.5',
                        '5000.00',
                      ]),
                  reusableTableRow(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      backgroundColor: const Color(0xffEEF8FA),
                      textColor: Colors.black,
                      lst: [
                        '30.00',
                        '22',
                        '8.5',
                        '9.5',
                        '485.00',
                      ]),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
