//  to start call some http request in flutter we will need the flutter http package

import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../weather_model.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=fb3c62725e8d8b07ca2b4d3938cb9177&units=metrics");
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    log(Weather.fromJson(body).cityName.toString());
    return Weather.fromJson(body);
  }
}
