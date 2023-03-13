import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kmps/controller/member/add_member_controller.dart';
import 'package:kmps/controller/member/member_controller.dart';
import 'package:kmps/custom_widgets/alart/limitupdat_alart.dart';
import 'package:kmps/custom_widgets/alart/memberupdate_alart.dart';
import 'package:kmps/screen/drawer_screen/drawer_widget.dart';
import 'package:kmps/utils/colors.dart';
import 'package:kmps/utils/reusable_text.dart';

class EditMemberScreen extends StatefulWidget {
  final int index;
  const EditMemberScreen({super.key, required this.index});

  @override
  State<EditMemberScreen> createState() => _EditMemberScreenState();
}

class _EditMemberScreenState extends State<EditMemberScreen> {
  final editMemberController = Get.put(AddMemberController());
  final memberListController = Get.find<MemberController>();
  String dropDownValue = 'Male';
  var items = [
    'Male',
    'Female',
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final data =
        memberListController.memberListModel.value.member![widget.index];
    editMemberController.memberCodeController.text = data.memberCode.toString();
    editMemberController.memberNameController.text = data.memberName.toString();
    editMemberController.mobileNoController.text = data.memberPhone.toString();
    editMemberController.addressController.text = data.address.toString();

    editMemberController.regionalNameController.clear();

    editMemberController.emailController.clear();

    editMemberController.bankNameController.clear();
    editMemberController.branchNameController.clear();
    editMemberController.bankAccountController.clear();
    editMemberController.ifscConroller.clear();
    editMemberController.limitController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Edit Member',
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
      body:
          // Obx(() {
          // return
          SafeArea(
              child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: const Color(0xffD4E2FE),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ReusableText.reusableText(
                      title: 'Member Code: ',
                      weight: FontWeight.bold,
                      size: 14,
                      color: buttonColors1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: MediaQuery.of(context).size.height * 0.045,
                      width: 150,
                      color: Colors.white,
                      child: TextField(
                        controller: editMemberController.memberCodeController,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            isDense: true,
                            // contentPadding: EdgeInsets.symmetric(
                            //     horizontal: 15, vertical: 10),
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ReusableText.reusableText(
                      title: 'Personal Information',
                      size: 18,
                      color: Colors.black,
                      weight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const ReusableText.reusableText(
                                title: 'સભ્ય નુ નામ (ગુજરાતી)',
                                weight: FontWeight.bold,
                                color: buttonColors1,
                                size: 14,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.0035,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                height:
                                    MediaQuery.of(context).size.height * 0.045,
                                width: 150,
                                color: Colors.white,
                                child: TextField(
                                  controller: editMemberController
                                      .regionalNameController,
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                      isDense: true,
                                      // contentPadding: EdgeInsets.symmetric(
                                      //     horizontal: 15, vertical: 10),
                                      border: InputBorder.none),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const ReusableText.reusableText(
                                title: 'Member Name',
                                weight: FontWeight.bold,
                                color: buttonColors1,
                                size: 14,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.0035,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                height:
                                    MediaQuery.of(context).size.height * 0.045,
                                width: 150,
                                color: Colors.white,
                                child: TextField(
                                  controller:
                                      editMemberController.memberNameController,
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                      isDense: true,
                                      // contentPadding: EdgeInsets.symmetric(
                                      //     horizontal: 15, vertical: 10),
                                      border: InputBorder.none),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const ReusableText.reusableText(
                      title: 'Email',
                      size: 14,
                      weight: FontWeight.bold,
                      color: buttonColors1,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.0035,
                    ),
                    Container(
                      // padding: EdgeInsets.only(left: 10, bottom: 3),
                      height: 40,
                      width: double.infinity,
                      color: Colors.white,
                      child: TextField(
                        controller: editMemberController.emailController,
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.only(left: 15, top: 10),
                            border: InputBorder.none,
                            hintStyle: TextStyle(fontSize: 15)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const ReusableText.reusableText(
                      title: 'Address',
                      size: 14,
                      weight: FontWeight.bold,
                      color: buttonColors1,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.0035,
                    ),
                    Container(
                      height: 40,
                      width: double.infinity,
                      color: Colors.white,
                      child: TextField(
                        controller: editMemberController.addressController,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.only(left: 15, top: 10),
                            border: InputBorder.none,
                            hintStyle: TextStyle(fontSize: 15)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const ReusableText.reusableText(
                                title: 'Mobile Number',
                                weight: FontWeight.bold,
                                color: buttonColors1,
                                size: 14,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.0035,
                              ),
                              Container(
                                height: 40,
                                width: 150,
                                color: Colors.white,
                                child: TextField(
                                  controller:
                                      editMemberController.mobileNoController,
                                  decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding:
                                          EdgeInsets.only(left: 15, top: 10),
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(fontSize: 15)),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const ReusableText.reusableText(
                                title: 'Gender',
                                color: buttonColors1,
                                weight: FontWeight.bold,
                                size: 14,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.0035,
                              ),
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  height: 40,
                                  width: 150,
                                  color: Colors.white,
                                  child: DropdownButton(
                                    underline: Container(),
                                    isExpanded: true,
                                    value: dropDownValue,
                                    alignment: Alignment.center,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: ReusableText.reusableText(
                                          title: items,
                                          size: 14,
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? value) {
                                      setState(() {
                                        dropDownValue = value!;
                                      });
                                    },
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const ReusableText.reusableText(
                      title: 'Bank Information',
                      color: Colors.black,
                      size: 18,
                      weight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const ReusableText.reusableText(
                                weight: FontWeight.bold,
                                title: 'Bank Name',
                                color: buttonColors1,
                                size: 14,
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: 40,
                                color: Colors.white,
                                child: TextField(
                                  controller:
                                      editMemberController.bankNameController,
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding:
                                          EdgeInsets.only(left: 15, top: 10),
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(fontSize: 15)),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const ReusableText.reusableText(
                                title: 'Branch Name',
                                weight: FontWeight.bold,
                                color: buttonColors1,
                                size: 14,
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: 40,
                                color: Colors.white,
                                child: TextField(
                                  controller:
                                      editMemberController.branchNameController,
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding:
                                          EdgeInsets.only(left: 15, top: 10),
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(fontSize: 15)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReusableText.reusableText(
                      title: 'Bank A/C. No.',
                      weight: FontWeight.bold,
                      size: 14,
                      color: buttonColors1,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.0035,
                    ),
                    Container(
                      height: 40,
                      width: double.infinity,
                      color: Colors.white,
                      child: TextField(
                        controller: editMemberController.bankAccountController,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.only(left: 15, top: 10),
                            border: InputBorder.none,
                            hintStyle: TextStyle(fontSize: 15)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReusableText.reusableText(
                      title: 'IFSC',
                      weight: FontWeight.bold,
                      color: buttonColors1,
                      size: 14,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.0035,
                    ),
                    Container(
                      height: 40,
                      width: double.infinity,
                      color: Colors.white,
                      child: TextField(
                        controller: editMemberController.ifscConroller,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.only(left: 15, top: 10),
                            border: InputBorder.none,
                            hintStyle: TextStyle(fontSize: 15)),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    InkWell(
                      onTap: () async {
                        await editMemberController.updateMemberDetails(
                          id: memberListController.memberListModel.value
                              .member![widget.index].memberId
                              .toString(),
                          name: editMemberController.memberNameController.text,
                          memberCode:
                              editMemberController.memberCodeController.text,
                          phoneNum:
                              editMemberController.mobileNoController.text,
                          address: editMemberController.addressController.text,
                          regionalName:
                              editMemberController.regionalNameController.text,
                          gender: dropDownValue,
                          email: editMemberController.emailController.text,
                          bankName:
                              editMemberController.bankNameController.text,
                          bankAccNo:
                              editMemberController.bankAccountController.text,
                          branchName:
                              editMemberController.branchNameController.text,
                          ifsc: editMemberController.ifscConroller.text,
                        );
                        print('nv jhhj');
                        editMemberController.sucess.value == true
                            ? showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    const MemberUpdateAlert(
                                      title: 'Saved!',
                                    ))
                            : "";
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.064,
                        width: double.infinity,
                        color: buttonColors1,
                        child: const Center(
                          child: ReusableText.reusableText(
                            title: 'Save',
                            size: 19,
                            color: Colors.white,
                            weight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              width: double.infinity,
              color: const Color(0xffD4E2FE),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ReusableText.reusableText(
                      title: 'Limit',
                      color: buttonColors1,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.25,
                      color: whiteColor,
                      child: TextField(
                        controller: editMemberController.limitController,
                        decoration: const InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.only(left: 15, top: 10),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    InkWell(
                      onTap: () async {
                        await editMemberController.setLimit(
                          limit: editMemberController.limitController.text,
                          memberId: memberListController.memberListModel.value
                              .member![widget.index].memberId
                              .toString(),
                        );

                    
                       // ignore: use_build_context_synchronously
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => LimitUpdateAlert(
                                  name: memberListController.memberListModel
                                      .value.member![widget.index].memberName
                                      .toString(),
                                ));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.054,
                        width: double.infinity,
                        color: buttonColors1,
                        child: const Center(
                          child: ReusableText.reusableText(
                            title: 'Set Limit',
                            size: 19,
                            color: Colors.white,
                            weight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
      // }
      // )
    );
  }
}
