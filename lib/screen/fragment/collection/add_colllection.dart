import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:kmps/custom_widgets/alart/collection_alart.dart';
import 'package:kmps/custom_widgets/table/table.dart';

import '../../../utils/colors.dart';
import '../../../utils/reusable_text.dart';
import '../../drawer_screen/drawer_widget.dart';

class AddCollection extends StatefulWidget {
  const AddCollection({Key? key}) : super(key: key);

  @override
  State<AddCollection> createState() => _AddCollectionState();
}

class _AddCollectionState extends State<AddCollection> {
  bool values = true;
  bool cow = true;
  bool buffalo = false;
  bool switchValue = false;
  bool m = true;
  String dropDownValue = 'Member Name';
  var items = [
    'Member Name',
    'Member 1',
    'Member 2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        title: const Text('Add Collection'),
      ),
      drawer: const DrawerWidgets(),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                width: double.infinity,
                color: h1Color,
                child: Row(
                  children: [
                    Expanded(
                      child: const ReusableText.reusableText(
                        title: 'MANAN DESAI JNG [123]',
                        weight: FontWeight.bold,
                        size: 17,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: const Color(0xffffbfbf),
                                  border:
                                      Border.all(color: buttonColors1, width: 2)),
                              child: const Center(
                                  child: ReusableText.reusableText(
                                title: 'A',
                                weight: FontWeight.bold,
                              ))),
                          const SizedBox(
                            width: 3,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffbfffd1),
                                  border:
                                      Border.all(color: buttonColors1, width: 2)),
                              height: 35,
                              width: 35,
                              child: const Center(
                                  child: ReusableText.reusableText(
                                title: 'E',
                                weight: FontWeight.bold,
                              ))),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  border:
                                      Border.all(color: buttonColors1, width: 2),
                                  borderRadius: BorderRadius.circular(20)),
                              padding: const EdgeInsets.all(2),
                              height: 40,
                              width: 50,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    m = !m;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        m ? buttonColors1 : Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Center(
                                    child: ReusableText.reusableText(
                                      title: 'M',
                                      color: whiteColor,
                                      weight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ReusableText.reusableText(
                      weight: FontWeight.normal,
                      title: 'Collection ends in- 02:02:45',
                      size: 15,
                    ),
                    ReusableText.reusableText(
                      size: 13,
                      title: 'Dt: 14/02/23',
                      weight: FontWeight.w500,
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                color: const Color(0xffD4E2FE),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ReusableText.reusableText(
                          title: 'M.code',
                          weight: FontWeight.bold,
                        ),
                        Row(
                          children: [
                            const ReusableText.reusableText(
                              title: 'Print Slip',
                              weight: FontWeight.bold,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            FlutterSwitch(
                              width: 60.0,
                              height: 22.0,
                              valueFontSize: 10,
                              toggleSize: 25.0,
                              value: switchValue,
                              borderRadius: 25.0,
                              showOnOff: true,
                              onToggle: (value) {
                                setState(() {
                                  switchValue = value;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            padding: const EdgeInsets.all(10),
                            color: whiteColor,
                            child: const TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                  hintText: '00.00',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 20)),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          flex: 2,
                          child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 35,
                              width: 230,
                              color: whiteColor,
                              child: DropdownButton(
                                underline: Container(),
                                isExpanded: true,
                                value: dropDownValue,
                                alignment: Alignment.center,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: ReusableText.reusableText(
                                      title: items,
                                      size: 14,
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    dropDownValue = value!;
                                  });
                                },
                              )),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 85,
                            color: whiteColor,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  ReusableText.reusableText(
                                    title: 'Qty (ltr)',
                                    color: buttonColors1,
                                    size: 16,
                                    weight: FontWeight.bold,
                                  ),
                                  SizedBox(height: 5,),
                                  TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.zero,
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
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            height: 85,
                            color: whiteColor,
                            child: Column(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        cow = true;
                                        buffalo = false;
                                      });
                                    },
                                    child: Container(
                                      color: cow ? buttonColors1 : Colors.white,
                                      child: Center(
                                        child: ReusableText.reusableText(
                                            title: 'Cow',
                                            weight: FontWeight.bold,
                                            color:
                                                cow ? whiteColor : Colors.grey),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      cow = false;
                                      buffalo = true;
                                    });
                                  },
                                  child: Container(
                                    color: buffalo ? buttonColors1 : whiteColor,
                                    child: Center(
                                      child: ReusableText.reusableText(
                                        title: 'Buffelo',
                                        weight: FontWeight.bold,
                                        color: buffalo ? whiteColor : Colors.grey,
                                      ),
                                    ),
                                  ),
                                ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'FAT',
                                size: 17,
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 10),
                                height: 45,
                                width: 100,
                                color: Colors.white,
                                child: const TextField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.zero,
                                      border: InputBorder.none,
                                      hintText: '00.00',
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 20)),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 8),
                                height: 38,
                                width: 100,
                                color: Colors.white,
                                child: const TextField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.zero,
                                      border: InputBorder.none,
                                      hintText: '00.00',
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 17)),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'Rate',
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 10),
                                height: 38,
                                width: 100,
                                color: Colors.white,
                                child: const TextField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.zero,
                                      border: InputBorder.none,
                                      hintText: '00.00',
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 17)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        ReusableText.reusableText(
                          title: 'Total Amount:',
                          color: buttonColors1,
                          weight: FontWeight.bold,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        ReusableText.reusableText(
                          title: '000',
                          color: Colors.black,
                          size: 20,
                          weight: FontWeight.bold,
                        )
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: buttonColors1),
                        onPressed: () => showDialog(
                            context: context,
                            builder: (BuildContext context) => const Alert()),
                        child: const ReusableText.reusableText(
                          title: 'Save',
                          size: 18,
                          weight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ReusableText.reusableText(
                title: 'RECENT RECORDS',
                color: Colors.black,
                weight: FontWeight.bold,
                size: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 7.0, right: 7, top: 10, bottom: 20),
                child: Table(
                  children: [
                    reusableTableRow(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        backgroundColor: buttonColors1,
                        textColor: whiteColor,
                        lst: [
                          'COD',
                          'Qty',
                          'type',
                          'FAT',
                          'SNF',
                          'Rate',
                          'Amount'
                        ]),
                    reusableTableRow(
                        fontWeight: FontWeight.w600,
                        backgroundColor: const Color(0xffD4E2FE),
                        textColor: Colors.black,
                        fontSize: 13,
                        lst: [
                          '0001',
                          '10.00',
                          'Buf',
                          '8.5',
                          '-',
                          '40.5',
                          '405'
                        ]),
                    reusableTableRow(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        backgroundColor: const Color(0xffEEF8FA),
                        textColor: Colors.black,
                        lst: [
                          '0002',
                          '10.00',
                          'Cow',
                          '8.5',
                          '-',
                          '30.5',
                          '305'
                        ]),
                    reusableTableRow(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        backgroundColor: const Color(0xffD4E2FE),
                        textColor: Colors.black,
                        lst: [
                          '0010',
                          '10.00',
                          'Buf',
                          '8.5',
                          '-',
                          '40.5',
                          '405'
                        ]),
                    reusableTableRow(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        backgroundColor: const Color(0xffEEF8FA),
                        textColor: Colors.black,
                        lst: [
                          '2000',
                          '10.00',
                          'Buf',
                          '8.5',
                          '-',
                          '40.5',
                          '405'
                        ]),
                  ],
                ),
              ),
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
                              title: 'Total Qty',
                              weight: FontWeight.bold,
                              color: Colors.black),
                          ReusableText.reusableText(
                              size: 17,
                              title: '80.00 Ltr',
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
                              title: 'Total Amt.',
                              weight: FontWeight.bold,
                              color: Colors.black),
                          ReusableText.reusableText(
                              size: 17,
                              title: 'RS. 3140',
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
        ],
      ),
    );
  }
}
