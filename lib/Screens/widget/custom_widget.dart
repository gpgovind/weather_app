import 'package:flutter/material.dart';
import 'package:weather_app/constant/color.dart';

Widget currentWeather(IconData icon,String temp,String location){
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon,
        color: Colors.orange,
        size: 64.0,
        ),
        space,
        Text(temp,
        style: const TextStyle(fontSize: 46.0),
        ),
        space,
        Text(location,
        style: const TextStyle(fontSize: 20.0,color:Colors.black38),
        )
      ],
    ),
  );

}