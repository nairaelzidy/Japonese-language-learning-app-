import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_start_review2/All_section/section%2012/cubits/getWwatherCubit/get_Weather_States.dart';

import '../../models/weather_model.dart';
import '../../service/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() :super(WeatherInitialState());
   WeatherModel? weatherModel ;

  getWeather({required String cityName}) async {
    try {
       weatherModel =
          await WeatherService2().getCurrentWeather(cityName: cityName);

      emit(WeatherLoadedStates());
    } catch (e)
    {
      emit(WeatherFailureStates());

    }
  }
}
