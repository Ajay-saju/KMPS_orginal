import 'package:dio/dio.dart';
import 'package:kmps/main.dart';
import 'package:kmps/service/base_api/orginal_api.dart';

class AddMemberService{
  static OrginalApi orginalApi = OrginalApi();
  final dio = Dio(BaseOptions(
      baseUrl: orginalApi.base_url, responseType: ResponseType.json));
      Future<Response>addNewMember(userDatas)async{
        final token = sessionlog.getString('token');
        print(userDatas);
        try {
          Response response = await dio.post(
        'api/member_create',data: userDatas,
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