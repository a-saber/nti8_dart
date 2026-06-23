import 'package:dio/dio.dart';
import 'api_recap.dart';
String baseUrl = 'https://nti-ecommerce-api-production-a482.up.railway.app/api/';
Dio dio = Dio(BaseOptions(baseUrl: baseUrl));
String? accessToken;
void main()async{
  await login();
  placeOrder();
}

Future login()async{
  try{
    var result = await dio.post('login',
      data: FormData.fromMap({
        'email': 'ahmed@gmail.com',
        'password': '123456'
      })
    );
    var mapResponse = result.data as Map<String, dynamic>;
    accessToken = mapResponse['access_token'];
    print('Logged in');
  }
  catch(e){
    handleError(e);
  }
}


Future placeOrder() async {
  try{
    var result = await dio.post('place_order',
    options: Options(
      headers: {
        'Authorization': 'Bearer $accessToken'
      }
    ),
      data: {
        "items" : [
          {
            "product_id": 12,
            "quantity": 2
          },
          {
            "product_id": 10,
            "quantity": 3
          }
        ]
      }
    );
    print(result.data);
  }
      catch(e){
    handleError(e);
      }
}