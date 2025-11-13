import 'package:flutter/material.dart';

enum WeatherType{
  cloudy('assets/ex4/cloudy.png', Color(0xff3494E6), Color(0xffEC6EAD), Color.fromARGB(255, 241, 123, 182),),
  sunny('assets/ex4/sunny.png', Color(0xff41295a),Color(0xff2F0743),Color.fromARGB(255, 72, 53, 92),),
  sunnyCloudy('assets/ex4/sunnyCloudy.png',Color(0xfff4c4f3),Color(0xfffc67fa),Color.fromARGB(255, 253, 130, 251),),
  veryCloudy('assets/ex4/veryCloudy.png',Color(0xffff7e5f),Color(0xfffeb47b),Color.fromARGB(255, 255, 203, 163),);

  final String imageLocation;
  final Color start;
  final Color end;
  final Color color;

  const WeatherType(this.imageLocation, this.start, this.end, this.color);
}
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(

        body: Center(

          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              spacing: 20,
              children: [
                WeatherCard(city: 'Phnom Penh', min: 10, max: 30, current: 12.2, weatherType: WeatherType.cloudy),
                WeatherCard(city: 'Paris', min: 10, max: 30, current: 12.2, weatherType: WeatherType.sunny),
                WeatherCard(city: 'Paris', min: 10, max: 30, current: 12.2, weatherType: WeatherType.sunnyCloudy),
                WeatherCard(city: 'Paris', min: 10, max: 30, current: 12.2, weatherType: WeatherType.veryCloudy),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class WeatherCard extends StatelessWidget {
  final String city;
  final double min;
  final double max;
  final double current;
  final WeatherType weatherType;

  const WeatherCard({
    super.key,
    required this.city,
    required this.min,
    required this.max,
    required this.current,
    required this.weatherType
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Stack(
        children: [
          Container(
            height: 150,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [weatherType.start, weatherType.end],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(weatherType.imageLocation),
                  backgroundColor: Colors.white,
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      city,
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Min: $min °C',
                      style: TextStyle(color: Colors.white70),
                    ),
                    Text(
                      'Max: $max °C',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            top: -30,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(120),
                  bottomLeft: Radius.circular(60),
                ),
                color: weatherType.color,
              ),
              alignment: Alignment.center,
              child: Text(
                '$current °C',
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
            ),
          ),
        ],
              ),
    );
  }
}