import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kmps/custom_widgets/gradeview_modle/cow/subject_modle.dart';
import 'package:kmps/utils/colors.dart';
import 'package:kmps/utils/reusable_text.dart';

class BrowseSubject extends StatelessWidget {
  final String pouredmembers;
  final String pendingMenbers;
  final String totalQuantity;
  final String samples;
  final String avgFat;
  final String avgSnf;
   BrowseSubject({super.key,required this.pouredmembers,required this.pendingMenbers,required this.totalQuantity,required this.samples,required this.avgFat,required this.avgSnf});

  final List<BrowseModel> Cow = [
    BrowseModel(
        image: 'images/MemberDasb.svg',
        title: 'Poured Member',
        number: '',
        color: const Color(0xffC0F1FD)),
    BrowseModel(
        image: 'images/MemberDasb.svg',
        title: 'Pending Member',
        number: '',
        color: const Color(0xffFED4D6)),
    BrowseModel(
        image: 'images/QTY.png',
        title: 'Total Qty (Ltr)',
        number: '',
        color: const Color(0xffE8DAFE)),
    BrowseModel(
        image: 'images/Group.svg',
        title: 'No of Sample',
        number: '',
        color: const Color(0xffFEF5DA)),
    BrowseModel(
        image: 'images/FAT.png',
        title: 'Avgerage FAT',
        number: '',
        color: const Color(0xffDBF5F0)),
    BrowseModel(
        image: 'images/snf.png',
        title: 'Avgerage SNF',
        number: '',
        color: const Color(0xffD4E2FE)),
  ];

  @override
  Widget build(BuildContext context) {
    
    final numbers = [
      pouredmembers,
      pendingMenbers,
      totalQuantity,
      samples,
      avgFat,
      avgSnf,
    ];
     for (var i = 0; i < Cow.length; i++) {
      Cow[i].number = numbers[i];
    }
    print(numbers.toString());
    return GridView.builder(
      itemCount: Cow.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1),
      itemBuilder: (_, index) {
        return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Cow[index].color,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: whiteColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: Cow[index].color,
                                offset: const Offset(10, 10),
                                spreadRadius: 5,
                              ),
                            ]),
                        child: Center(
                            child: ReusableText.reusableText(
                              title: Cow[index].number,
                              size: 28,
                              weight: FontWeight.bold,
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: SvgPicture.asset(
                        Cow[index].image,
                        height: 40,
                        width: 40,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ReusableText.reusableText(
                  title: Cow[index].title,
                  size: 20,
                  weight: FontWeight.bold,
                )
              ],
            ));
      },
    );
  }
}
