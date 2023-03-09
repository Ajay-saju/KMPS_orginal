import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kmps/utils/colors.dart';
import 'package:kmps/utils/reusable_text.dart';

import '../../../../drawer_widget.dart';

class RateGrade extends StatefulWidget {
  const RateGrade({Key? key}) : super(key: key);

  @override
  State<RateGrade> createState() => _RateGradeState();
}

class _RateGradeState extends State<RateGrade> {
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
            'Rate Grade',
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
                padding: const EdgeInsets.all(10),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ReusableText.reusableText(
                      title: 'Cow (KG Rate)',
                      size: 20,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'FAT 1',
                                size: 18,
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),
                                height: 50,
                                width: 100,
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 0),
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
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'FAT 2',
                                size: 18,
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 5),
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
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'FAT 3',
                                size: 20,
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 5),
                                        border: InputBorder.none,
                                        hintText: '0',
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
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'Rate Grade 1',
                                size: 15,
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),
                                height: 50,
                                width: 100,
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 0),
                                        border: InputBorder.none,
                                        hintText: '000',
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
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'Rate Grade 2',
                                size: 15,
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 5),
                                        border: InputBorder.none,
                                        hintText: '000',
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
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'Rate Grade 3',
                                size: 15,
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 5),
                                        border: InputBorder.none,
                                        hintText: '000',
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
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
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
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  border: Border.all(
                                      color: Colors.grey, width: 1)),
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
              height: 10,
            ),
            Container(
              width: double.infinity,
              color: Color(0xffD4E2FE),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ReusableText.reusableText(
                      title: 'Buffalow (KG Rate)',
                      size: 20,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'FAT 1',
                                size: 18,
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),
                                height: 50,
                                width: 100,
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 0),
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
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'FAT 2',
                                size: 18,
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 5),
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
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'FAT 3',
                                size: 20,
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 5),
                                        border: InputBorder.none,
                                        hintText: '0',
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
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'Rate Grade 1',
                                size: 15,
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),
                                height: 50,
                                width: 100,
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 0),
                                        border: InputBorder.none,
                                        hintText: '000',
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
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'Rate Grade 2',
                                size: 15,
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 5),
                                        border: InputBorder.none,
                                        hintText: '000',
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
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'Rate Grade 3',
                                size: 15,
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 5),
                                        border: InputBorder.none,
                                        hintText: '000',
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: buttonColors1,
                  child: ReusableText.reusableText(
                    title: 'Save',
                    color: whiteColor,
                    size: 16,
                    weight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ));
  }
}
