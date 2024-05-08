import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_start_review2/All_section/section%2012/cubits/getWwatherCubit/get_weather_cubit.dart';
import 'package:new_start_review2/All_section/section%2012/providers/weather_providers.dart';
import 'package:new_start_review2/All_section/section%2012/screen/home_pages.dart';
import 'package:provider/provider.dart';


import 'cubits/getWwatherCubit/get_Weather_States.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) {
        return WeatherProvider();
      },
      child: WeatherApp()));
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
          builder: (context) {
            return BlocBuilder<GetWeatherCubit, WeatherState>(
              builder: (context, state) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    primarySwatch: Provider.of<WeatherProvider>(context).weatherData == null ?
                    Colors.blue : Provider.of<WeatherProvider>(context).weatherData!.getThemeColor()  ,
                  ),
                  home: HomePage(),
                );
              },
            );
          }
      ),
    );
  }
}
