import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/reusable_text.dart';
import '../../../drawer_widget.dart';

class Analyzer extends StatefulWidget {
  const Analyzer({Key? key}) : super(key: key);

  @override
  State<Analyzer> createState() => _AnalyzerState();
}

class _AnalyzerState extends State<Analyzer> {
  String bluetooth = 'Smblews';
  var bluetoothItems = [
    'Smblews',
    'Smblews 1',
    'Smblews 2',
  ];
  String saleType = 'Vamendu';
  var saleTypeItems = [
    'Vamendu',
    'Vamendu 1',
    'Vamendu 2',
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
          'Analyzer',
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
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      alignment: Alignment.centerLeft,
                      height: 70,
                      color: Colors.grey.shade200,
                      child: const ReusableText.reusableText(
                          size: 17, title: 'Bluetooth', color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)),
                      padding: const EdgeInsets.all(8),
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
            const SizedBox(
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
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      alignment: Alignment.centerLeft,
                      height: 70,
                      color: Colors.grey.shade200,
                      child: const ReusableText.reusableText(
                          size: 17, title: 'Scale Type', color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)),
                      padding: const EdgeInsets.all(8),
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
            const SizedBox(
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
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      alignment: Alignment.centerLeft,
                      height: 70,
                      color: Colors.grey.shade200,
                      child: const ReusableText.reusableText(
                          size: 17, title: 'Baud Rate', color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)),
                      padding: const EdgeInsets.all(8),
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
            const SizedBox(
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
