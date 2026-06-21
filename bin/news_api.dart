import 'package:dio/dio.dart';

Dio dio = Dio(BaseOptions(
  baseUrl: 'https://newsapi.org/v2/'
));
void main(){

  getTopHeadLines();
  

}

Future<void> getTopHeadLines() async{
  
  var response = await dio.get('top-headlines',
    queryParameters: {
      'q': 'c',
      'apiKey': '836086f05b344448a16dd41ee51c6320',
      'category': 'science'
    }
  );
  print(response.data.toString());
}