import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kmps/service/member_service/add_member_sevice.dart';
import 'package:kmps/service/member_service/member_list_service.dart';
import 'package:kmps/utils/loading_widget.dart';

import '../../service/member_service/set_member_limit.dart';

class AddMemberController extends GetxController {
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

  Future addNewMember({
    required String memberCode,
    required String regionalName,
    required String memberName,
    required String address,
    required int phoneNumber,
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
    String jsonData = json.encode(data);
    DialogHelper.showLoading();
    try {
      var response = await addMemberService.addNewMember(jsonData);
      if (response.statusCode == 200) {
        DialogHelper.hideLoading();
        sucess.value = true;
      }
    } catch (e) {
      print(e.toString());
    }
    update();
  }

  Future setLimit({required String memberId, required String limit}) async {
    MemberLimitServce memberLimitServce = MemberLimitServce();
    final data = {'member_id': memberId, 'limit': limit};
    String jsonData = json.encode(data);
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
