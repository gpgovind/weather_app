class Weather {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  double? feels_like;
  int? pressure;
  Weather(
      {this.cityName,
      this.temp,
      this.wind,
      this.humidity,
      this.feels_like,
      this.pressure});

// a function to parse the json file into the model
// creating the instance of weather model

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json['name'];
    temp = json['main']['temp'];
    wind=json['wind']['speed'];
    pressure=json['main']['pressure'];
    humidity=json['main']['humidity'];
    feels_like=json['main']['feels_like'];
  }
}
