import 'dart:convert';

import 'package:hackathon/constants/api/api_url.dart';
import 'package:hackathon/models/ap_response.dart';
import 'package:hackathon/models/global_class.dart';
import 'package:http/http.dart' as http;

class ApiResponseService {

  double? get temparature => _apiResponse?.current?.tempC;

  APIResponse? _apiResponse;

  getResponse({required String? apiKey,}) async {
    var forcastUrl =
    Uri.parse(ApiBaseUrl.baseUrl + '/forecast.json?key=${apiKey}&q=London&aqi=no');

    try {
      var response = await http.get(forcastUrl,); // get

      var decodedJson = jsonDecode(response.body) as Map<String, dynamic>;

       _apiResponse =
      APIResponse.fromJson(decodedJson);

     print(temparature);
      GlobalClass.cityName = "London";
       return _apiResponse;
    } catch (e) {
      throw e.toString();
    }
  } // getResponse

  getResponseCity({required String? apiKey, required cityName}) async {
    var forcastUrl =
    Uri.parse(ApiBaseUrl.baseUrl + '/forecast.json?key=${apiKey}&q=${cityName}&aqi=no');

    try {
      var response = await http.get(forcastUrl,); // get

      var decodedJson = jsonDecode(response.body) as Map<String, dynamic>;

      _apiResponse =
          APIResponse.fromJson(decodedJson);

      print(temparature);
      return _apiResponse;
    } catch (e) {
      throw e.toString();
    }
  } // getResponse
} // ApiResponseService