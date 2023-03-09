import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/reusable_text.dart';
import '../../../drawer_widget.dart';

class WeighningScale extends StatefulWidget {
  const WeighningScale({Key? key}) : super(key: key);

  @override
  State<WeighningScale> createState() => _WeighningScaleState();
}

class _WeighningScaleState extends State<WeighningScale> {
  String bluetooth = 'Essae';
  var bluetoothItems = [
    'Essae',
    'Essae 1',
    'Essae 2',
  ];
  String saleType = 'Lacto Scan';
  var saleTypeItems = [
    'Lacto Scan',
    'Lacto Scan 1',
    'Lacto Scan 2',
  ];
  String baudRate = '2400';
  var baudRateItems = [
    '2400',
    '2500',
    '2600',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Weighning Scale',
        ),
        actions: [
          SvgPicture.asset(
            'images/notification.svg',
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.06,
          )
        ],
      ),
      drawer: const DrawerWidgets(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: whiteColor,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      alignment: Alignment.centerLeft,
                      height: 70,
                      color: Colors.grey.shade200,
                      child: ReusableText.reusableText(
                          size: 17, title: 'Bluetooth', color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)),
                      padding: EdgeInsets.all(8),
                      child: DropdownButton(
                        underline: Container(),
                        isExpanded: true,
                        value: bluetooth,
                        alignment: Alignment.center,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                        ),
                        items: bluetoothItems.map((String items) {
                          return DropdownMenuItem(
                              value: items,
                              child: ReusableText.reusableText(
                                title: items,
                                size: 15,
                              ));
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            bluetooth = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: whiteColor,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      alignment: Alignment.centerLeft,
                      height: 70,
                      color: Colors.grey.shade200,
                      child: ReusableText.reusableText(
                          size: 17, title: 'Scale Type', color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)),
                      padding: EdgeInsets.all(8),
                      child: DropdownButton(
                        underline: Container(),
                        isExpanded: true,
                        value: saleType,
                        alignment: Alignment.center,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                        ),
                        items: saleTypeItems.map((String items) {
                          return DropdownMenuItem(
                              value: items,
                              child: ReusableText.reusableText(
                                title: items,
                                size: 15,
                              ));
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            saleType = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: whiteColor,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      alignment: Alignment.centerLeft,
                      height: 70,
                      color: Colors.grey.shade200,
                      child: ReusableText.reusableText(
                          size: 17, title: 'Baud Rate', color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)),
                      padding: EdgeInsets.all(8),
                      child: DropdownButton(
                        underline: Container(),
                        isExpanded: true,
                        value: baudRate,
                        alignment: Alignment.center,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                        ),
                        items: baudRateItems.map((String items) {
                          return DropdownMenuItem(
                              value: items,
                              child: ReusableText.reusableText(
                                title: items,
                                size: 15,
                              ));
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            baudRate = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
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
    );
  }
}
