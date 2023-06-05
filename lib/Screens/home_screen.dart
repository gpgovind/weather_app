import 'package:flutter/material.dart';
import 'package:weather_app/Screens/widget/additionalinformation.dart';
import 'package:weather_app/Screens/widget/custom_widget.dart';
import 'package:weather_app/constant/color.dart';
import 'package:weather_app/model/services/weather_api_client.dart';
import 'package:weather_app/model/weather_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;

// @override
// initState() {
//   super.initState();
//  // Add listeners to this class
//  client.getCurrentWeather("India");
// }
  Future<void> getData() async {
    data = await client.getCurrentWeather("Georgia");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            'Weather App',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
              onPressed: () {},
              color: Colors.black,
              icon: const Icon(Icons.menu)),
        ),
        body: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    currentWeather(Icons.wb_sunny_rounded, '${data!.temp}',
                        "${data!.cityName}"),
                    const SizedBox(
                      height: 60.0,
                    ),
                    const Text(
                      'Additional Information',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          color: Color(0xdd212121)),
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    additionalInformation("${data!.wind}", "${data!.humidity}",
                        "${data!.pressure}", "${data!.feels_like}"),
                  ],
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Container();
            }

            // here we will display if get data form the api           return Container()
            ));
  }
}
