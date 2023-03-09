import 'package:dio/dio.dart';
import 'package:kmps/service/base_api/orginal_api.dart';

class GetLoginService {
  static OrginalApi orginalApi = OrginalApi();
  final dio = Dio(BaseOptions(
      baseUrl: orginalApi.base_url, responseType: ResponseType.json));

  Future<Response> getLoginOtp(data) async {
    try {
  
      Response response = await dio.post(
        'api/generate_otp',
        data: data,
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );
      print(response.data.toString());
      return response;
    } on DioError catch (e) {
      print(e.message);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}