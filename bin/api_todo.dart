import 'package:dio/dio.dart';
String baseUrl = 'https://ntitodo-production-3c33.up.railway.app/api/';
Dio dio = Dio(BaseOptions(
  baseUrl: baseUrl
));
String? accessToken;
String? refreshToken;
void main() async{
  await login();
  getTasks();


}

Future<void> login() async {
  try{
    var response = await dio.post('login',
        data: FormData.fromMap(
            {'username': 'ahmed-saber', 'password': '123456'}));

    var mapResponse = response.data as Map<String, dynamic>;
    accessToken = mapResponse['access_token'];
    refreshToken = mapResponse['refresh_token'];

    print(mapResponse.toString());
  }
  catch(e){
    if(e is DioException){
      print(e.response?.data.toString());
    }
    else{
      print(e.toString());
    }
  }
}

Future<void> getTasks() async{
  try{
    var response = await dio.get(
      "my_tasks",
      options: Options(
        headers: {
          'Authorization': 'Bearer $accessToken'
        }
      )
    );
    print(response.data.toString());
  }
  catch(e){
    if(e is DioException){
      print(e.response?.data.toString());
    }
    else{
      print(e.toString());
    }
  }
}

// register
// update
// get_user_data