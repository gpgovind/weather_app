import 'package:flutter/material.dart';
import 'package:weather_app/constant/color.dart';

Widget additionalInformation(String wind,String humidity,String pressure,String feels_like){
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(10.0),
    child:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Text('wind',style: titleFont,
                ),
                space,
                Text('pressure',
                style: titleFont,
                )
              ],
              ),

              //**** */
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Text(wind,style: infoFont,
                ),
                space,
                Text(pressure,
                style: infoFont,
                )
              ],
              ),

              //**** */
           Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Text('Humidity',style: titleFont,
                ),
                space,
                Text('feels Like',
                style: titleFont,
                )
              ],
              ),
                 //**** */
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Text(humidity,style: infoFont,
                ),
                space,
                Text(feels_like,
                style: infoFont,
                )
              ],
              ),
            ],
        )
      ],
    ),
  );

}