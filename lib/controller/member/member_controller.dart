import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kmps/model/member/member_list_model.dart';
import 'package:kmps/service/member_service/delete_member_service.dart';
import 'package:kmps/service/member_service/member_list_service.dart';
import 'package:kmps/utils/loading_widget.dart';

class MemberController extends GetxController {
  final searchController = TextEditingController();
  var isLoading = true.obs;
  Rx<MemberListModel> memberListModel = MemberListModel().obs;
  Future getMemberList(serchItem) async {
    MemberListServce memberListServce = MemberListServce();

    final data = {"search_key": serchItem};
    String jsonData = json.encode(data);
    try {
      final response = await memberListServce.getMemberList(jsonData);
      if (response.statusCode == 200) {
        memberListModel.value = MemberListModel.fromJson(response.data);
        // print(memberListModel.value.member![0].address.toString());
        isLoading.value = false;
      }
    } catch (e) {
      print(e.toString());
    }
    update();
  }
DeleteMember deleteMember =DeleteMember();
  Future deleteUser(memberId) async {
    DialogHelper.showLoading();
    // isLoading.value=true;
    
    final data = {'member_id': memberId};
    String jsonData = json.encode(data);
    try {
      final response = await deleteMember.deleteUserData(jsonData);
      if (response.statusCode == 200) {
        //  isLoading.value = false;
        DialogHelper.hideLoading();
      }else{
        print('item not found');
      }
    } catch (e) {
      print(e.toString());
    }
    update();
  }
}
