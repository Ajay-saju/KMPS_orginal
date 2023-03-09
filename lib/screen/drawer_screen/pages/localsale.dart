import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../custom_widgets/table/table.dart';
import '../../../utils/colors.dart';
import '../../../utils/reusable_text.dart';
import '../drawer_widget.dart';
import 'local_sale_ledger.dart';

class LocalSale extends StatefulWidget {
  const LocalSale({Key? key}) : super(key: key);

  @override
  State<LocalSale> createState() => _LocalSaleState();
}

class _LocalSaleState extends State<LocalSale> {
  bool m = true;
  bool e = false;
  String dropdownvalue = 'Jigar Rabari';
  var items = [
    'Jigar Rabari',
    'Jigar Rabari 1',
    'Jigar Rabari 2',
  ];
  bool cow = true;
  bool buffalo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LocalSaleLedger()));
              },
              child: SvgPicture.asset(
                'images/plus.svg',
              ),
            ),
            const SizedBox(width: 7),
            SvgPicture.asset(
              'images/notification.svg',
            ),
            const SizedBox(
              width: 20,
            )
          ],
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text('Local Scale'),
        ),
        drawer: const DrawerWidgets(),
        body: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                color: h1Color,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: ReusableText.reusableText(
                        title: 'MANAN DESAI JNG [123]',
                        weight: FontWeight.bold,
                        size: 17,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      height: 45,
                      width: 120,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: buttonColors1, width: 1.5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                m = true;
                                e = false;
                              });
                            },
                            child: Container(
                              height: 38,
                              width: 57,
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
                          InkWell(
                            onTap: () {
                              setState(() {
                                e = true;
                                m = false;
                              });
                            },
                            child: Container(
                              height: 38,
                              width: 57,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: e ? const Color(0xff0D4179) : Colors.white,
                                // border:
                                //     Border.all(color: buttonColors1, width: 1.5),
                              ),
                              child: Center(
                                child: ReusableText.reusableText(
                                  title: 'E',
                                  color: e ? Colors.white : buttonColors1,
                                  weight: FontWeight.bold,
                                  size: 18,
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
              Container(
                padding: const EdgeInsets.all(10),
                // height: 350,
                width: double.infinity,
                color: const Color(0xffd4e2fe),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const ReusableText.reusableText(
                      title: 'Bill No. 101',
                      textAlign: TextAlign.center,
                      weight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(

                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration:
                            BoxDecoration(border: Border.all(color: buttonColors1)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Expanded(
                                  child: Center(
                                    child: ReusableText.reusableText(
                                      title: 'M.Code',
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(

                                    padding: const EdgeInsets.all(10),
                                    color: Colors.white,
                                    child: const Center(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            isDense: true,
                                            contentPadding: EdgeInsets.only(
                                              left: 5,
                                            ),
                                            border: InputBorder.none,
                                            hintText: 'OO00',
                                            hintStyle: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      // ReusableText.reusableText(
                                      //   title: '0001',
                                      // ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  border: Border.all(color: buttonColors1)),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(

                                  // isExpanded: true,
                                  value: dropdownvalue,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? value) {
                                    setState(() {
                                      dropdownvalue = value!;
                                    });
                                  },
                                ),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const ReusableText.reusableText(
                      title: 'Credit Limit: 0',
                      textAlign: TextAlign.center,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Container(
                      padding: EdgeInsets.all(2),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: buttonColors1, width: 1.5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: cow ? buttonColors1 : whiteColor,
                                  borderRadius: BorderRadius.circular(30),
                                  // border: Border.all(color: buttonColors1, width: 1.5)
                                ),
                                child: Center(
                                  child: ReusableText.reusableText(
                                    size: 18,
                                    weight: FontWeight.bold,
                                    color: cow ? Colors.white : Colors.grey,
                                    title: 'Cow',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  buffalo = true;
                                  cow = false;
                                });
                              },
                              child: Container(

                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: buffalo
                                      ? const Color(0xff0D4179)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  // border:
                                  //     Border.all(color: Color(0xff0D4179), width: 1.5),
                                ),
                                child: Center(
                                  child: ReusableText.reusableText(
                                    title: 'Buffalo',
                                    color: buffalo ? Colors.white : Colors.grey,
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
                    const SizedBox(
                      height: 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'Qty',
                                size: 20,
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
                                height: 40,
                                width: 100,
                                child: const Center(
                                  child: TextField(
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 25),
                                        border: InputBorder.none,
                                        hintText: '00.0',
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
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'Rate',
                                size: 20,
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),
                                child: const Center(
                                  child: TextField(
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20),
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
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText.reusableText(
                                title: 'AMT',
                                size: 20,
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5)),
                                child: const Center(
                                  child: TextField(
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        border: InputBorder.none,
                                        hintText: '00.00',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 17)),
                                  ),
                                ),
                                // const Center(
                                //   child: ReusableText.reusableText(
                                //     title: '405.00',
                                //     weight: FontWeight.bold,
                                //     size: 18,
                                //   ),
                                // ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
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
                height: 15,
              ),
              const ReusableText.reusableText(
                title: 'RECENT RECORDS',
                weight: FontWeight.bold,
                size: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Table(
                    columnWidths: const {
                  0: FixedColumnWidth(60),
                  // 5: FixedColumnWidth(80)
                },
                    children: [
                  reusableTableRow(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      backgroundColor: buttonColors1,
                      textColor: whiteColor,
                      lst: ['Date', 'COD', 'Type', 'Qty', 'Rate', 'Amount']),
                  reusableTableRow(
                      fontWeight: FontWeight.normal,
                      backgroundColor: const Color(0xffD4E2FE),
                      textColor: Colors.black,
                      fontSize: 13,
                      lst: ['01/01/23', '0001', 'Buf', '10.00', '40.5', '405']),
                  reusableTableRow(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      backgroundColor: const Color(0xffEEF8FA),
                      textColor: Colors.black,
                      lst: ['01/01/23', '0002', 'Cow', '10.00', '30.5', '305']),
                  reusableTableRow(
                      fontWeight: FontWeight.normal,
                      backgroundColor: const Color(0xffD4E2FE),
                      textColor: Colors.black,
                      fontSize: 13,
                      lst: ['01/01/23', '0010', 'Buf', '10.00', '40.5', '405']),
                  reusableTableRow(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      backgroundColor: const Color(0xffEEF8FA),
                      textColor: Colors.black,
                      lst: ['01/01/23', '2000', 'Cow', '10.00', '40.5', '405']),
                ]),
              ),
            ],
          ),
        ));
  }
}
