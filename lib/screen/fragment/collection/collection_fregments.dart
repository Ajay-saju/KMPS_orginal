import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kmps/custom_widgets/table/table.dart';
import '../../../controller/collection/collection_list_controller.dart';
import '../../../custom_widgets/table/table_with_divider.dart';
import '../../../utils/colors.dart';
import '../../../utils/reusable_text.dart';
import '../../drawer_screen/drawer_widget.dart';
import 'add_colllection.dart';

class Collection extends StatefulWidget {
  const Collection({Key? key}) : super(key: key);

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  final collectionListController = Get.put(CollectionListController());
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
  void initState() {
    // TODO: implement initState
    super.initState();
    collectionListController.getCollectionList(
        date:" 09-03-2023", shift: 'Morning', searchWord: '');
  }

  bool male = true;
  bool female = false;

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      titleSpacing: 0,
      backgroundColor: Theme.of(context).primaryColor,
      title: const Text(
        'Collection',
      ),
      actions: [
        SvgPicture.asset(
          'images/notification.svg',
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
    var height =
        MediaQuery.of(context).size.height - appBar.preferredSize.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appBar,
        drawer: const DrawerWidgets(),
        body: Obx(() {
          return collectionListController.isLoading.value == true
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                    strokeWidth: 2.5,
                  ),
                )
              : SingleChildScrollView(
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
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
                                    width: width * 0.4,
                                    height: height * 0.06,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: buttonColors1)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                  width: width * 0.23,
                                  height: height * 0.06,
                                  decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                          color: buttonColors1, width: 1.5)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              male = true;
                                              female = false;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: male
                                                  ? buttonColors1
                                                  : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              // border:
                                              //     Border.all(color: buttonColors1, width: 1.5),
                                            ),
                                            child: Center(
                                              child: ReusableText.reusableText(
                                                size: 18,
                                                weight: FontWeight.bold,
                                                color: male
                                                    ? Colors.white
                                                    : buttonColors1,
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
                                              female = true;
                                              male = false;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: female
                                                  ? const Color(0xff0D4179)
                                                  : Colors.white,
                                              // border:
                                              //     Border.all(color: buttonColors1, width: 1.5),
                                            ),
                                            child: Center(
                                              child: ReusableText.reusableText(
                                                title: 'E',
                                                color: female
                                                    ? Colors.white
                                                    : buttonColors1,
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
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            color: const Color(0xffD4E2FE),
                            // alignment: Alignment.center,
                            // height: 450,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: height * 0.1,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        color: const Color(0xffEDEDF9),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            ReusableText.reusableText(
                                              title: 'Gajendra Sinh',
                                              size: 12,
                                            ),
                                            ReusableText.reusableText(
                                              title: 'M. code: 0001',
                                              size: 12,
                                            )
                                          ],
                                        ),
                                      ),
                                      Table(
                                        children: [
                                          reusableTableRowDate(
                                              backgroundColor: buttonColors1,
                                              textColor: whiteColor,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              lst: [
                                                'FAT',
                                                'SNF',
                                                'Type',
                                                'QTY',
                                                'AMOUNT'
                                              ]),
                                          reusableTableRow(
                                              backgroundColor: whiteColor,
                                              textColor: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              lst: [
                                                '10.0',
                                                '0.0',
                                                'Buf',
                                                '1.0',
                                                '75.0'
                                              ]),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 17,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 0.01 * height),
                                        width: double.infinity,
                                        color: const Color(0xffEDEDF9),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            ReusableText.reusableText(
                                              title: 'Gajendra Sinh',
                                              size: 12,
                                            ),
                                            ReusableText.reusableText(
                                              title: 'M. code: 0005',
                                              size: 12,
                                            )
                                          ],
                                        ),
                                      ),
                                      Table(
                                        children: [
                                          reusableTableRowDate(
                                              backgroundColor: buttonColors1,
                                              textColor: whiteColor,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              lst: [
                                                'FAT',
                                                'SNF',
                                                'Type',
                                                'QTY',
                                                'AMOUNT'
                                              ]),
                                          reusableTableRow(
                                              backgroundColor: whiteColor,
                                              textColor: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              lst: [
                                                '10.0',
                                                '0.0',
                                                'Buf',
                                                '1.0',
                                                '75.0'
                                              ]),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 17,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 0.01 * height),
                                        color: const Color(0xffEDEDF9),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            ReusableText.reusableText(
                                              title: 'Dhanraj Jat',
                                              size: 12,
                                            ),
                                            ReusableText.reusableText(
                                              title: 'M. code: 2258',
                                              size: 12,
                                            )
                                          ],
                                        ),
                                      ),
                                      Table(
                                        children: [
                                          reusableTableRowDate(
                                              backgroundColor: buttonColors1,
                                              textColor: whiteColor,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              lst: [
                                                'FAT',
                                                'SNF',
                                                'Type',
                                                'QTY',
                                                'AMOUNT'
                                              ]),
                                          reusableTableRow(
                                              backgroundColor: whiteColor,
                                              textColor: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              lst: [
                                                '10.0',
                                                '0.0',
                                                'Buf',
                                                '1.0',
                                                '75.0'
                                              ]),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 17,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 0.01 * height),
                                        color: const Color(0xffEDEDF9),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            ReusableText.reusableText(
                                              title: 'Gajendra Sinh',
                                              size: 12,
                                            ),
                                            ReusableText.reusableText(
                                              title: 'M. code: 2258',
                                              size: 12,
                                            )
                                          ],
                                        ),
                                      ),
                                      Table(
                                        children: [
                                          reusableTableRowDate(
                                              backgroundColor: buttonColors1,
                                              textColor: whiteColor,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              lst: [
                                                'FAT',
                                                'SNF',
                                                'Type',
                                                'QTY',
                                                'AMOUNT'
                                              ]),
                                          reusableTableRow(
                                              backgroundColor: whiteColor,
                                              textColor: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              lst: [
                                                '10.0',
                                                '0.0',
                                                'Buf',
                                                '1.0',
                                                '75.0'
                                              ]),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                color: whiteColor,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        color: const Color(0xffE8DAFE),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children:  [
                                            ReusableText.reusableText(
                                                size: 17,
                                                title: 'Total Qty',
                                                weight: FontWeight.bold,
                                                color: Colors.black),
                                            ReusableText.reusableText(
                                                size: 17,
                                                title: collectionListController.collectionListModel.value.totalqty.toString(),
                                                weight: FontWeight.bold,
                                                color: Colors.black),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        color: const Color(0xffC0F1FD),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            ReusableText.reusableText(
                                                size: 17,
                                                title: 'Total Amt.',
                                                weight: FontWeight.bold,
                                                color: Colors.black),
                                            ReusableText.reusableText(
                                                size: 17,
                                                title: 'Rs. 225',
                                                weight: FontWeight.bold,
                                                color: Colors.black),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Center(
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const AddCollection()));
                                    },
                                    child: const CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        backgroundColor: buttonColors1,
                                        radius: 20,
                                        child: Icon(
                                          Icons.add,
                                          color: whiteColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.1),
                        child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: whiteColor,
                              border:
                                  Border.all(color: buttonColors1, width: 0.5)),
                          child: const TextField(
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.only(left: 10, top: 10),
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 30,
                                ),
                                hintText: ' Search',
                                hintStyle: TextStyle(fontSize: 18)),
                          ),
                        ),
                      )
                    ],
                  ),
                );
        }));
  }
}
