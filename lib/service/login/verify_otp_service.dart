import 'package:dio/dio.dart';
import 'package:kmps/service/base_api/orginal_api.dart';

class VerifyOtpService {
  static OrginalApi orginalApi = OrginalApi();
  final dio = Dio(BaseOptions(
      baseUrl: orginalApi.base_url, responseType: ResponseType.json));

  Future<Response> verifyOtp({required data}) async {
    try {
      Response response = await dio.post(
        'api/verify_otp',
        data: data,
        options: Options(
          headers: {'Content-Type': 'application/json'},
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