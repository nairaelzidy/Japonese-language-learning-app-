import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_start_review2/All_section/section%2012/models/weather_model.dart';
import 'package:provider/provider.dart';

import '../cubits/getWwatherCubit/get_weather_cubit.dart';



class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});



  @override
  Widget build(BuildContext context) {

    WeatherModel? weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              weatherModel!.getThemeColor(),
              weatherModel.getThemeColor()[300]!,
              weatherModel.getThemeColor()[100]!,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 3,
          ),
          Text(
            weatherModel.cityName,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'updated at : ''${weatherModel.date.hour.toString()}:${weatherModel.date.minute.toString()}',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(weatherModel.getImage()),
              Text(
                weatherModel.temp.toInt().toString(),
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Text('maxTemp :${weatherModel.maxTemp.toInt()}'),
                  Text('minTemp : ${weatherModel.minTemp.toInt()}'),
                ],
              ),
            ],
          ),
          Spacer(),
          Text(
            weatherModel.weatherStateName,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
