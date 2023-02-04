import 'package:dio/dio.dart';

class ApiService
{
  final baseurl='https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String,dynamic>> get({required String endpoint})
  async{
    var response=await dio.get('$baseurl$endpoint');
    return response.data;
  }




}

