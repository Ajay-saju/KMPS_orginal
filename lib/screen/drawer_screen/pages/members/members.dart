import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kmps/controller/member/member_controller.dart';
import 'package:kmps/screen/drawer_screen/drawer_widget.dart';
import 'package:kmps/screen/drawer_screen/pages/members/add_member.dart';
import 'package:kmps/screen/drawer_screen/pages/members/edit_member_scrreen.dart';
import 'package:kmps/utils/colors.dart';
import 'package:kmps/utils/reusable_text.dart';

class Members extends StatefulWidget {
  const Members({Key? key}) : super(key: key);

  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {
  final memberConlroller = Get.put(MemberController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    memberConlroller.getMemberList('');
  }
//   TextEditingController _searchController = TextEditingController();
//   _searchController.addListener(() {
//   if (_searchController.text.isEmpty) {
//     // If the search text is empty, update the listview with all values
//     updateListViewWithAllValues();
//   }
// });

  

  @override
  Widget build(BuildContext context) {
    memberConlroller.searchController.addListener((){
      if( memberConlroller.searchController.text.isEmpty){
        memberConlroller.getMemberList('');
      }
    });
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        actions: [
          SvgPicture.asset(
            'images/notification.svg',
          ),
          const SizedBox(
            width: 20,
          )
        ],
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Members'),
      ),
      body: Obx(() {
        // final data = memberConlroller.memberListModel.value.member;
        return memberConlroller.isLoading.value == true
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                  strokeWidth: 2.5,
                ),
              )
            : Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    height: 80,
                    width: double.infinity,
                    color: const Color(0xffEEEEFA),
                    child: Container(
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: buttonColors1, width: 0.5)),
                      child: TextField(
                        controller: memberConlroller.searchController,
                        onSubmitted: (value) {
                          print(value.toString);
                          memberConlroller.getMemberList(value);
                        },
                       
                        decoration: const InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.only(left: 10, top: 10),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30,
                            ),
                            hintText: ' Search',
                            hintStyle: TextStyle(fontSize: 18)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    // height: 500,
                    child: memberConlroller.memberListModel.value.member!.isEmpty
                        ? const Center(
                            child: Text('No data Available'),
                          )
                        : ListView.separated(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Container(
                                    height: 140,
                                    width: double.infinity,
                                    color: const Color(0xffD4E2FE),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ReusableText.reusableText(
                                                title: memberConlroller
                                                        .memberListModel
                                                        .value
                                                        .member![index]
                                                        .memberName ??
                                                    "",
                                                weight: FontWeight.bold,
                                                color: buttonColors1,
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                memberConlroller
                                                        .memberListModel
                                                        .value
                                                        .member![index]
                                                        .address ??
                                                    "",
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              // ReusableText.reusableText(
                                              //   title: memberConlroller
                                              //           .memberListModel
                                              //           .value
                                              //           .member![index]
                                              //           .address ??
                                              //       "",
                                              //   size: 16,
                                              // ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                memberConlroller
                                                        .memberListModel
                                                        .value
                                                        .member![index]
                                                        .memberPhone ??
                                                    "",
                                              ),
                                              // ReusableText.reusableText(
                                              //   title: memberConlroller
                                              //           .memberListModel
                                              //           .value
                                              //           .member![index]
                                              //           .memberPhone ??
                                              //       "",
                                              // ),
                                              const SizedBox(
                                                height: 5,
                                              ),

                                              Text(
                                                memberConlroller
                                                        .memberListModel
                                                        .value
                                                        .member![index]
                                                        .birthDate ??
                                                    "",
                                              ),

                                              // ReusableText.reusableText(
                                              //   title: memberConlroller
                                              //           .memberListModel
                                              //           .value
                                              //           .member![index]
                                              //           .birthDate ??
                                              //       "",
                                              // )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 15.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    const ReusableText
                                                        .reusableText(
                                                      title: 'M.Code',
                                                      size: 12,
                                                    ),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    ReusableText.reusableText(
                                                      title: memberConlroller
                                                              .memberListModel
                                                              .value
                                                              .member![index]
                                                              .memberCode ??
                                                          "",
                                                      weight: FontWeight.bold,
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        Get.to(EditMemberScreen(
                                                          index: index,
                                                        ));
                                                      },
                                                      child: SvgPicture.asset(
                                                        'images/edit.svg',
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 8,
                                                    ),
                                                    InkWell(
                                                      onTap: () async {
                                                        memberConlroller.deleteUser(
                                                            memberConlroller
                                                                .memberListModel
                                                                .value
                                                                .member![index]
                                                                .memberId);
                                                      },
                                                      child: SvgPicture.asset(
                                                        'images/cross.svg',
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  height: 15,
                                ),
                            itemCount: memberConlroller
                                .memberListModel.value.member!.length),
                  ),
                ],
              );
      }),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddMember()));
        },
        child: const CircleAvatar(
          radius: 35,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xff2867AA),
            child: Icon(
              Icons.add,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const DrawerWidgets(),
    );
  }
}
