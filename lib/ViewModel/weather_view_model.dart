import 'package:flutter/material.dart';
import 'package:mvvm_example/Model/weather_model.dart';
import 'package:mvvm_example/Service/weather_repository.dart';

class WeatherViewModel with ChangeNotifier {
  final WeatherRepository _weatherRepository = WeatherRepository();
  WeatherViewModel() {
    fetchWeather();
  }
  Weather weather = Weather(city: 'city', temperature: 60, humidity: 78, condition: 'Sunny');

  Future<void> fetchWeather() async {
    weather = await _weatherRepository.getWeather();
    //home
    notifyListeners();
  }
}
