import 'package:get/state_manager.dart';
import 'package:kmps/main.dart';
import 'package:kmps/model/mcc_details/mcc_details_model.dart';

import '../../service/mcc_details/mcc_details_service.dart';

class SideDrawerController extends GetxController {
  var isLoading = true.obs;

  Rx<MccDetailsModel> mccDetailsModel = MccDetailsModel().obs;

  Future getMccDetails() async {
    MccDetailService mccDetailService = MccDetailService();

    try {
      var response = await mccDetailService.getMccDetalsService();
      if (response.statusCode == 200) {
        mccDetailsModel.value = MccDetailsModel.fromJson(response.data);
        isLoading.value = false;
        sessionlog.setString(
            'mcc_code', mccDetailsModel.value.mccDetail!.mccCode.toString());
        print(mccDetailsModel.value.mccDetail!.expiryDate);
      }
    } catch (e) {
      print(e.toString());
    }
    update();
  }

  String changeData(date) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate =
        '${dateTime.day.toString().padLeft(2, '0')}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.year.toString()}';
    return formattedDate;
  }
}
