import 'package:new_start_review2/All_section/section%2012/models/weather_model.dart';

abstract class WeatherState {}
class WeatherInitialState extends WeatherState {}

class WeatherLoadedStates extends WeatherState {

}

class WeatherFailureStates extends WeatherState {}
