import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_start_review2/All_section/section%2012/cubits/getWwatherCubit/get_weather_cubit.dart';
import 'package:new_start_review2/All_section/section%2012/screen/search_page.dart';
import 'package:provider/provider.dart';

import '../component/noWeatherbody.dart';
import '../component/weatherInfoBody.dart';
import '../cubits/getWwatherCubit/get_Weather_States.dart';
import '../models/weather_model.dart';
import '../providers/weather_providers.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void updateUi() {
    setState(() {});
  }

  WeatherModel? weatherData;

  @override
  Widget build(BuildContext context) {
    weatherData = Provider.of<WeatherProvider>(context).weatherData;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SearchPage(
                  updateUi: updateUi,
                );
              }));
            },
            icon: Icon(Icons.search),
          ),
        ],
        title: Text('Weather App'),
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if(state is WeatherInitialState)
          {
            return NoWeatherBody();
          } else if (state is WeatherLoadedStates )
          {
            return WeatherInfoBody();

          } else {
            return Text("oop there was an error");
          }

        },
      ),
    );
  }
}
