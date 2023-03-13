import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kmps/controller/member/member_controller.dart';
import 'package:kmps/service/member_service/add_member_sevice.dart';
import 'package:kmps/service/member_service/update_member_service.dart';
import 'package:kmps/utils/loading_widget.dart';

import '../../service/member_service/set_member_limit.dart';

class AddMemberController extends GetxController {
  final listMembeData = Get.find<MemberController>();
  var sucess = false.obs;
  final memberCodeController = TextEditingController();
  final regionalNameController = TextEditingController();
  final memberNameController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  final mobileNoController = TextEditingController();
  final bankNameController = TextEditingController();
  final branchNameController = TextEditingController();
  final bankAccountController = TextEditingController();
  final ifscConroller = TextEditingController();
  final limitController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    memberCodeController.clear();
    regionalNameController.clear();
    memberNameController.clear();
    emailController.clear();
    addressController.clear();
    mobileNoController.clear();
    bankNameController.clear();
    branchNameController.clear();
    bankAccountController.clear();
    ifscConroller.clear();
    limitController.clear();
  }

  Future addNewMember({
    required String memberCode,
    required String regionalName,
    required String memberName,
    required String address,
    required String phoneNumber,
    required String gender,
    required String email,
    required String bankName,
    required String branchName,
    required String accountNumber,
    required String ifscCOde,
  }) async {
    AddMemberService addMemberService = AddMemberService();
    final data = {
      'member_name_guj': regionalName,
      'member_name': memberName,
      'member_code': memberCode,
      'member_phone': phoneNumber,
      'address': address,
      'gender': gender,
      'email': email,
      'bank_name': bankName,
      'bank_acc_no': accountNumber,
      'branch_name': branchName,
      'ifsc': ifscCOde
    };
    print(data);
    String jsonData = json.encode(data);
    print(jsonData);
    DialogHelper.showLoading();
    try {
      var response = await addMemberService.addNewMember(jsonData);
      if (response.statusCode == 200) {
        DialogHelper.hideLoading();
        sucess.value = true;
        listMembeData.getMemberList('');
      }
    } catch (e) {
      print(e.toString());
    }
    update();
  }

  Future updateMemberDetails({
    required String id,
    required String name,
    required String memberCode,
    required String phoneNum,
    required String address,
    String? regionalName,
    String? gender,
    String? email,
    String? bankName,
    String? bankAccNo,
    String? branchName,
    String? ifsc,
  }) async {
    UpdateMemberDetails updateMemberDetails = UpdateMemberDetails();

    final data = {
      'member_id': id,
      'member_name_guj': regionalName,
      'member_name': name,
      'member_code': memberCode,
      'member_phone': phoneNum,
      'address': address,
      'gender': gender,
      'email': email,
      'bank_name': bankName,
      'bank_acc_no': bankAccNo,
      'ifsc': ifsc
    };
    print(data.toString());

    String jsonData = json.encode(data);
    print(jsonData.toString());
    DialogHelper.showLoading();
    sucess.value = false;

    try {
      var response = await updateMemberDetails.updateMemberDate(jsonData);
      if (response.statusCode == 200) {
        listMembeData.getMemberList('');
        DialogHelper.hideLoading();
        sucess.value = true;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future setLimit({required String memberId, required String limit}) async {
    MemberLimitServce memberLimitServce = MemberLimitServce();
    final data = {'member_id': memberId, 'limit': limit};
    String jsonData = json.encode(data);
    print(jsonData);
    DialogHelper.showLoading();
    try {
      var response = await memberLimitServce.setLimit(jsonData);
      if (response.statusCode == 200) {
        DialogHelper.hideLoading();
        sucess.value = true;
      }
    } catch (e) {
      print(e.toString());
    }
    update();
  }
}
