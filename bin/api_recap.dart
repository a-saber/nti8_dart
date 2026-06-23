import 'package:dio/dio.dart';

/*
E-commerce
register
login
get_user_data
sliders
https://nti-ecommerce-api-production-a482.up.railway.app/api/
 */

String baseUrl = 'https://ntitodo-production-3c33.up.railway.app/api/';
Dio dio = Dio(BaseOptions(baseUrl: baseUrl));
String? accessToken;

void main() async {
  await login();
  await newTask();
  getTasks();
}

Future newTask() async {
  try {
    var result = await dio.post('new_task',
    data: FormData.fromMap({
      'title': 'Task 00009',
      'description': 'Description 00009'
    }),
    options: Options(
      headers: {
        'Authorization': 'Bearer $accessToken'
      }
    )
    );
  } catch (e) {
    handleError(e);
  }
}

Future getTasks() async {
  try {
    var result = await dio.get('my_tasks',
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}));
    print(result.data);
  } catch (e) {
    handleError(e);
  }
}

Future login() async {
  try {
    var result = await dio.post('login',
        data: FormData.fromMap(
            {'username': 'ahmed-saber', 'password': '1234567'}));
    var mapResponse = result.data as Map<String, dynamic>;
    accessToken = mapResponse['access_token'];
  } catch (e) {
    handleError(e);
  }
}

void handleError(e) {
  if (e is DioException) {
    var errorResponse = e.response?.data as Map<String, dynamic>;
    print(errorResponse['message']);
  } else {
    print(e.toString());
  }
}
