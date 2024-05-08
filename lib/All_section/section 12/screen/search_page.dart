import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_start_review2/All_section/section%2012/cubits/getWwatherCubit/get_weather_cubit.dart';
import 'package:provider/provider.dart';

import '../models/weather_model.dart';
import '../providers/weather_providers.dart';
import '../service/weather_service.dart';


class SearchPage extends StatelessWidget {
  String? cityName;
  SearchPage({this.updateUi});
  VoidCallback? updateUi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a City'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onChanged: (data)
            {
              cityName = data;
            },
            onSubmitted: (data) async {
              cityName = data;
              Navigator.pop(context);
            GetWeatherCubit getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
            getWeatherCubit.getWeather(cityName: cityName!);

              // WeatherService service = WeatherService();
              //
              // WeatherModel? weather =
              // await service.getWeather(cityName: cityName!);
              //
              // Provider.of<WeatherProvider>(context,listen: false).weatherData = weather;
              // Provider.of<WeatherProvider>(context,listen: false).cityName = cityName;


            },
            decoration: InputDecoration(
              contentPadding:
              EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              label: Text('search'),
              suffixIcon: GestureDetector(

                  onTap : () async
                  {
                    WeatherService service = WeatherService();

                    WeatherModel? weather =
                    await service.getWeather(cityName: cityName!);

                    Provider.of<WeatherProvider>(context,listen: false).weatherData = weather;
                    Provider.of<WeatherProvider>(context,listen: false).cityName = cityName;

                    Navigator.pop(context);
                  },
                  child: Icon(Icons.search)),
              border: OutlineInputBorder(),
              hintText: 'Enter a city',
            ),
          ),
        ),
      ),
    );
  }
}

