import 'package:dio/dio.dart';
import 'package:kmps/main.dart';
import 'package:kmps/service/base_api/orginal_api.dart';

class GetMilkRate {
  static OrginalApi orginalApi = OrginalApi();
  final dio = Dio(BaseOptions(
      baseUrl: orginalApi.base_url, responseType: ResponseType.json));
  Future<Response> getMilkRate(data) async {
  
    final token = sessionlog.getString('token');
  
    try {
      Response response = await dio.post(
        'api/get_rate',data: data,
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

