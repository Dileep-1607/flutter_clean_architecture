import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_clean_architecture/data/app_exceptions.dart';
import 'package:http/http.dart'as http;
import 'package:flutter_clean_architecture/data/network/base_api_services.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future getApi(String url) async {
    if (kDebugMode) {
      print("URL==>>$url");
    }
    dynamic responseJson;
    try{
      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequesetTimeOut {
      throw RequesetTimeOut();
    }
    return responseJson;
  }

  Future postApi(var data, String url) async {
    if (kDebugMode) {
      print("URL==>>$url");
    }
    dynamic responseJson;
    try{
      final response = await http.post(Uri.parse(url),
      body: jsonEncode(data)
      ).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequesetTimeOut {
      throw RequesetTimeOut();
    }
    return responseJson;
  }



  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 400:
      throw InvalidUrlException();

      default:
        throw FetchDataException();
    }
  }


  
}