import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kmps/utils/colors.dart';
import 'package:kmps/utils/reusable_text.dart';

import '../../../../drawer_widget.dart';

class UploadRateChart extends StatefulWidget {
  const UploadRateChart({Key? key}) : super(key: key);

  @override
  State<UploadRateChart> createState() => _UploadRateChartState();
}

class _UploadRateChartState extends State<UploadRateChart> {
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
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text(
            'Upload Rate Chart',
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
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText.reusableText(
                          title: 'New Rate Code: ',
                          color: buttonColors1,
                          weight: FontWeight.w500,
                          size: 16,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ReusableText.reusableText(
                          title: '4288',
                          weight: FontWeight.w500,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText.reusableText(
                          title: 'Effective Date',
                          color: buttonColors1,
                          weight: FontWeight.w500,
                          size: 16,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                          onTap: () {
                            showDate();
                          },
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                border: Border.all(color: buttonColors1)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ReusableText.reusableText(
                                  title:
                                  "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}",
                                ),
                                SizedBox(width: 10,),
                                SvgPicture.asset(
                                  'images/calender.svg',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Color(0xffD4E2FE),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ReusableText.reusableText(
                      textAlign: TextAlign.center,
                      title: 'Upload Rate Chart\n(CSV/ Excel)',
                      size: 20,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          color: buttonColors1,
                          child: const Center(
                            child: ReusableText.reusableText(
                              title: 'Upload',
                              color: whiteColor,
                              size: 16,
                              weight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'images/excel.svg',
                              height: 100,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ReusableText.reusableText(
                              title: 'Chart1.xls',
                              weight: FontWeight.bold,
                              size: 18,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          'images/cross.svg',
                          height: 35,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xffEEEEFA),
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ReusableText.reusableText(
                              title: 'Cow Fat Upto*',
                              size: 18,
                              weight: FontWeight.bold,
                              color: buttonColors1,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  border:
                                      Border.all(color: Colors.grey, width: 1)),
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 0),
                                      border: InputBorder.none,
                                      hintText: '0.0',
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 20)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
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
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
