import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kmps/utils/reusable_text.dart';

import '../../../../../../custom_widgets/table/table.dart';
import '../../../../../../custom_widgets/table/table_with_divider.dart';
import '../../../../../../utils/colors.dart';
import '../../../../drawer_widget.dart';

class RateList extends StatefulWidget {
  const RateList({Key? key}) : super(key: key);

  @override
  State<RateList> createState() => _RateListState();
}

class _RateListState extends State<RateList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text(
            'Rate List',
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
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  color: Color(0xffD4E2FE),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          ReusableText.reusableText(
                            title: 'Rate Code:',
                            color: buttonColors1,
                            size: 15,
                            weight: FontWeight.bold,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ReusableText.reusableText(
                            title: '4288',
                            weight: FontWeight.bold,
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            'images/cross.svg',
                            height: 30,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ReusableText.reusableText(
                            title: 'Effective Date:',
                            color: buttonColors1,
                            size: 15,
                            weight: FontWeight.bold,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ReusableText.reusableText(
                            title: '01-01-2023',
                            weight: FontWeight.bold,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Table(columnWidths: const {}, children: [
                        reusableTableRowDate(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          backgroundColor: buttonColors1,
                          textColor: whiteColor,
                          lst: [
                            'KG Rate',
                            'FAT',
                            'SNF',
                            'Rate',
                          ],
                        ),
                        reusableTableRow(
                            fontWeight: FontWeight.w600,
                            backgroundColor: Color(0xffffffff),
                            textColor: Colors.black,
                            fontSize: 13,
                            lst: [
                              'Cow',
                              '7.5',
                              '0.0',
                              '750',
                            ]),
                        reusableTableRow(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            backgroundColor: Color(0xffEEF8FA),
                            textColor: Colors.black,
                            lst: [
                              'Buffalo',
                              '7.8',
                              '0.0',
                              '800',
                            ]),
                      ]),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),

                  width: double.infinity,
                  color: Color(0xffD4E2FE),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          ReusableText.reusableText(
                            title: 'Rate Code:',
                            color: buttonColors1,
                            size: 15,
                            weight: FontWeight.bold,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ReusableText.reusableText(
                            title: '4288',
                            weight: FontWeight.bold,
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            'images/cross.svg',
                            height: 30,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ReusableText.reusableText(
                            title: 'Effective Date:',
                            color: buttonColors1,
                            size: 15,
                            weight: FontWeight.bold,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ReusableText.reusableText(
                            title: '01-01-2023',
                            weight: FontWeight.bold,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SvgPicture.asset(
                              'images/excel.svg',
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          const ReusableText.reusableText(
                            title: 'Chart1.xls',
                            size: 15,
                            weight: FontWeight.w500,
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 35,
                              width: 110,
                              color: buttonColors1,
                              child: Center(
                                child: ReusableText.reusableText(
                                  title: 'Download',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ));
  }
}
