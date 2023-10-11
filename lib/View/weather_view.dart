import 'package:flutter/material.dart';
import 'package:mvvm_example/ViewModel/weather_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // @override
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<WeatherViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hava Durumu'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Şehir: ${viewModel.weather.city}'),
          Text('Sıcaklık: ${viewModel.weather.temperature}°C'),
          Text('Nem Oranı: ${viewModel.weather.humidity}%'),
          Text('Hava Durumu: ${viewModel.weather.condition}'),
        ],
      )),
    );
  }
}
