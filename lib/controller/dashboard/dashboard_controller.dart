import 'dart:convert';
import 'package:get/get.dart';
import 'package:kmps/main.dart';
import 'package:kmps/model/dashboard/dashboard_details_model.dart';
import 'package:kmps/service/dashboard_service/dash_details_service.dart';

class  DashboardController extends GetxController {

  var isLoading = true.obs;

  Rx<DashbordDetailsModel> dasboardDetailsModel = DashbordDetailsModel().obs;
  Future getdashboardDetaails(
      {required String milkType, required String shift}) async {
    DashDetailsService dashDetailsService = DashDetailsService();

    final mcc_id = sessionlog.getString('mcc_code');
    final data = {
      'milk_type': milkType,
      'shift': shift,
      'mcc_id': mcc_id,
    };
    String jsonData = json.encode(data);
    try {
      var response = await dashDetailsService.getDashboardDetails(jsonData);
      if (response.statusCode == 200) {
        dasboardDetailsModel.value =
            DashbordDetailsModel.fromJson(response.data);
            isLoading.value = false;

      }
    } catch (e) {
      print(e.toString());
    }
    update();
  }
}
