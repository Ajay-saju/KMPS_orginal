import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/reusable_text.dart';
import '../../../drawer_widget.dart';

class General extends StatefulWidget {
  const General({Key? key}) : super(key: key);

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  String initial = '';
  String initial1 = '';
  int _currentIndex1 = 0;
  List<String> lst1 = [
    "RATE GRADE",
    "RATE CHART",
  ];
  int currentIndex = 0;
  List<String> lst = [
    "Essae - 1111",
    "Printer 2",
    "Printer 3",
    "Printer 4",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Settings',
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
              height: 55,
              width: double.infinity,
              color: whiteColor,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      color: Colors.grey.shade200,
                      child: Center(
                        child: ReusableText.reusableText(
                            size: 17,
                            title: 'Local Sale Rate',
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      color: Color(0xffD7DEE9),
                      child: Center(
                        child: ReusableText.reusableText(
                            size: 17, title: '0.1', color: Colors.black),
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
              height: 55,
              width: double.infinity,
              color: whiteColor,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      color: Colors.grey.shade200,
                      child: Center(
                        child: ReusableText.reusableText(
                            size: 17,
                            title: 'Rate Structure',
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      color: Color(0xffFFEBC8),
                      child: InkWell(
                        onTap: () {
                          var result = showDialog(
                              context: context,
                              builder: (_) {
                                return Dialog(
                                  insetPadding: EdgeInsets.all(20),
                                  backgroundColor: Color(0xff95E7BB),
                                  child: Container(
                                    padding: EdgeInsets.all(40),
                                    height: 250,
                                    child: Column(
                                      children: [
                                        ReusableText.reusableText(
                                          title: 'Select Printer Type',
                                          size: 18,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          color: Colors.white,
                                          padding: EdgeInsets.all(3),
                                          alignment: Alignment.center,
                                          width: double.infinity,
                                          child: ListView(
                                            shrinkWrap: true,
                                            children: List.generate(lst1.length,
                                                (index) {
                                              return InkWell(
                                                onTap: () {
                                                  var result = Navigator.pop(
                                                      context, lst1[index]);
                                                  setState(() {
                                                    _currentIndex1 = index;
                                                  });
                                                },
                                                child: Container(
                                                  height: 50,
                                                  color: _currentIndex1 == index
                                                      ? buttonColors1
                                                      : Colors.white,
                                                  child: Center(
                                                      child: ReusableText
                                                          .reusableText(
                                                    title: lst1[index],
                                                    weight: FontWeight.bold,
                                                    color:
                                                        _currentIndex1 == index
                                                            ? Colors.white
                                                            : Colors.grey,
                                                  )),
                                                ),
                                              );
                                              //   ElevatedButton(
                                              //   onPressed: () {
                                              //     Navigator.pop(context, lst[index]);
                                              //   },
                                              //   child: Text(lst[index]),
                                              // );
                                            }),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                          setState(() {
                            initial = result.toString();
                            print(initial);
                          });
                        },
                        child: Center(
                          child: ReusableText.reusableText(
                            size: 17,
                            title: 'RATE GRADE',
                            color: Colors.black,
                            weight: FontWeight.w500,
                          ),
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
              height: 55,
              width: double.infinity,
              color: whiteColor,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      color: Colors.grey.shade200,
                      child: Center(
                        child: ReusableText.reusableText(
                            size: 17,
                            title: 'Printer Type',
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        var result = showDialog(
                            context: context,
                            builder: (_) {
                              return Dialog(
                                insetPadding: EdgeInsets.all(20),
                                backgroundColor: Color(0xff95E7BB),
                                child: Container(
                                  padding: EdgeInsets.all(40),
                                  height: 350,
                                  child: Column(
                                    children: [
                                      ReusableText.reusableText(
                                        title: 'Select Rate Structure',
                                        size: 18,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        color: Colors.white,
                                        padding: EdgeInsets.all(3),
                                        alignment: Alignment.center,
                                        width: double.infinity,
                                        child: ListView(
                                          shrinkWrap: true,
                                          children: List.generate(lst.length,
                                              (index) {
                                            return InkWell(
                                              onTap: () {
                                                Navigator.pop(
                                                    context, lst[index]);
                                                setState(() {
                                                  currentIndex = index;
                                                });
                                              },
                                              child: Container(
                                                height: 50,
                                                color: currentIndex == index
                                                    ? buttonColors1
                                                    : Colors.white,
                                                child: Center(
                                                    child: ReusableText
                                                        .reusableText(
                                                  title: lst[index],
                                                  weight: FontWeight.bold,
                                                  color: currentIndex == index
                                                      ? Colors.white
                                                      : Colors.grey,
                                                )),
                                              ),
                                            );
                                            //   ElevatedButton(
                                            //   onPressed: () {
                                            //     Navigator.pop(context, lst[index]);
                                            //   },
                                            //   child: Text(lst[index]),
                                            // );
                                          }),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Container(
                        color: Color(0xffDBF5F0),
                        child: Center(
                          child: ReusableText.reusableText(
                              size: 17,
                              title: 'Essae - 1111',
                              weight: FontWeight.w500,
                              color: Colors.black),
                        ),
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
