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
class LoginResponse{
  String? accessToken;
  String? refreshToken;
  bool? status;
  User? user;
  LoginResponse({this.status, this.accessToken, this.refreshToken, this.user});
  LoginResponse.fromJson(Map<String, dynamic> json){
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
    status = json['status'];
    if(json['user'] != null){
      user = User.fromJson(json['user']);
    }
  }

}
class User{
  int? id;
  String? imagePath;
  String? username;
  User({this.id, this.username, this.imagePath});
  User.fromJson(Map<String, dynamic> json){
    id = json['id'];
    imagePath = json['image_path'];
    username = json['username'];
  }
}
Future<void> login() async {
  try{
    var response = await dio.post('login',
        data: FormData.fromMap(
            {'username': 'ahmed-saber', 'password': '123456'}));

    var mapResponse = response.data as Map<String, dynamic>;
    LoginResponse loginResponse =
    LoginResponse.fromJson(mapResponse);


    accessToken = loginResponse.accessToken;
    refreshToken = loginResponse.refreshToken;

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