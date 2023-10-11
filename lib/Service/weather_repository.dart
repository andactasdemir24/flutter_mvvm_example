import 'package:mvvm_example/Model/weather_model.dart';

class WeatherRepository {
  Future<Weather> getWeather() async {
    return Weather(city: 'istanbul', temperature: 35.0, humidity: 80.0, condition: "Sunny");
  }
}
