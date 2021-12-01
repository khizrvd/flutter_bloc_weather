import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_weather/app.dart';
import 'package:flutter_bloc_weather/weather_bloc_observer.dart';
import 'package:flutter_services_binding/flutter_services_binding.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weather_repository/weather_repository.dart';

void main() async {
  FlutterServicesBinding.ensureInitialized();
  runApp(WeatherApp(weatherRepository: WeatherRepository()),
  );
  // HydratedBlocOverrides.runZoned(
  //       () => runApp(WeatherApp(weatherRepository: WeatherRepository())),
  //   blocObserver: WeatherBlocObserver(),
  //   storage: storage,

}