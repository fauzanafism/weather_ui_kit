import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeatherParams extends StatelessWidget {
  const WeatherParams({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 85,
          child: Column(
            children: const [
              Icon(Icons.air, color: Colors.white),
              SizedBox(
                height: 8,
              ),
              Text('13 km/h',
                  style: TextStyle(color: Colors.white)),
              Text(
                'Wind',
                style: TextStyle(color: Colors.white60),
              )
            ],
          ),
        ),
        SizedBox(
          width: 85,
          child: Column(
            children: const [
              FaIcon(
                FontAwesomeIcons.thermometerThreeQuarters,
                color: Colors.white,
              ),
              SizedBox(
                height: 8,
              ),
              Text('24 %', style: TextStyle(color: Colors.white)),
              Text(
                'Humidity',
                style: TextStyle(color: Colors.white60),
              )
            ],
          ),
        ),
        SizedBox(
          width: 85,
          child: Column(
            children: const [
              FaIcon(FontAwesomeIcons.cloudRain,
                  color: Colors.white),
              SizedBox(
                height: 8,
              ),
              Text('87%', style: TextStyle(color: Colors.white)),
              Text(
                'Precipitation',
                style: TextStyle(color: Colors.white60),
              )
            ],
          ),
        ),
      ],
    );
  }
}

