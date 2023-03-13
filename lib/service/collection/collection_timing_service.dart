
import 'package:dio/dio.dart';
import 'package:kmps/main.dart';

import '../base_api/orginal_api.dart';

class CollectionTimingService {
  static OrginalApi orginalApi = OrginalApi();
  final dio = Dio(BaseOptions(
      baseUrl: orginalApi.base_url, responseType: ResponseType.json));
  Future<Response> getCollectionTimming() async {
  
    final token = sessionlog.getString('token');
  
    try {
      Response response = await dio.post(
        'api/collection_start_end',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            "Authorization": "Bearer $token",
          },
        ),
      );
      return response;
    } on DioError catch (e) {
      print(e.message);
      rethrow;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}

