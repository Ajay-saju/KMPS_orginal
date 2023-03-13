import 'dart:convert';

import 'package:get/get.dart';
import 'package:kmps/service/collection/collection_list_service.dart';

import '../../model/collection/collection_list_model.dart';

class CollectionListController extends GetxController {
  var isLoading = true.obs;
  Rx<CollectionListModel> collectionListModel = CollectionListModel().obs;
  Future getCollectionList(
      {required String date,
      required String shift,
      required String searchWord}) async {
    CollectionListService collectionListService = CollectionListService();
    final data = {'date': date, 'shift': shift, 'search_word': searchWord};
    String jsonData = json.encode(data);
    try {
      var response = await collectionListService.getCollectionList(jsonData);
      if(response.statusCode ==200){
        collectionListModel.value = CollectionListModel.fromJson(response.data);
        isLoading.value=false;
        print(collectionListModel.value.collection!.length);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
