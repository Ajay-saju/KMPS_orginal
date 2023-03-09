// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kmps/utils/colors.dart';

import '../../../controller/side_drawer/side_drawer_controller.dart';
import '../../../custom_widgets/gradeview_modle/buffalo/browse_subject.dart';
import '../../../custom_widgets/gradeview_modle/cow/browse_subject.dart';
import '../../../utils/reusable_text.dart';
import '../../drawer_screen/drawer_widget.dart';

class DashboardFragment extends StatefulWidget {
  const DashboardFragment({Key? key}) : super(key: key);

  @override
  State<DashboardFragment> createState() => _DashboardFragmentState();
}

class _DashboardFragmentState extends State<DashboardFragment> {
  final drawerController = Get.put(SideDrawerController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    drawerController.getMccDetails();
  }

  bool cow = true;
  bool buffalo = false;
  bool m = true;
  bool e = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text(
            'Dashboard',
          ),
          actions: [
            SvgPicture.asset(
              'images/notification.svg',
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
        drawer: const DrawerWidgets(),
        body:

         Obx(() {
        return  drawerController.isLoading == true ?
        const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                  strokeWidth: 2.5,
                ),
              ):
           Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
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
                    const SizedBox(
                      width: 10,
                    ),
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
                                color:
                                    e ? const Color(0xff0D4179) : Colors.white,
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
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: buttonColors1, width: 1)),
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
                          height: 48,
                          width: 159,
                          decoration: BoxDecoration(
                            color: cow ? buttonColors1 : whiteColor,
                            borderRadius: BorderRadius.circular(30),
                            // border: Border.all(color: buttonColors1, width: 1.5)
                          ),
                          child: Center(
                            child: ReusableText.reusableText(
                              size: 18,
                              weight: FontWeight.bold,
                              color: cow ? Colors.white : buttonColors1,
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
                          height: 48,
                          width: 159,
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
                              color: buffalo ? Colors.white : buttonColors1,
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
              const SizedBox(height: 8),
              const ReusableText.reusableText(
                title: 'Total Members: 43',
                size: 21,
                weight: FontWeight.w400,
                color: Colors.black,
              ),
              cow
                  ? Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
                        child: BrowseSubject(),
                      ),
                    )
                  : Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        child: BrowseSubjectBuffalo(),
                      ),
                    ),
            ],
          );
        }));
  }
}
