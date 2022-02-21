import 'package:weather_ui_kit/presentation/constant/image_path.dart';

class PerDay {
  final String day;
  final String imagePath;
  final String weather;
  final String maxTemperature;
  final String minTemperature;

  PerDay(
      {required this.day,
      required this.imagePath,
      required this.weather,
      required this.maxTemperature,
      required this.minTemperature});
}

final List<PerDay> weatherPerDay = [
  PerDay(
      day: 'Mon',
      imagePath: ImagePath.rainyDay,
      weather: 'Rainy',
      maxTemperature: '+20\u00B0',
      minTemperature: '+14\u00B0'),
  PerDay(
      day: 'Tue',
      imagePath: ImagePath.rainyDay,
      weather: 'Rainy',
      maxTemperature: '+22\u00B0',
      minTemperature: '+16\u00B0'),
  PerDay(
      day: 'Wed',
      imagePath: ImagePath.rainThunder,
      weather: 'Storm',
      maxTemperature: '+19\u00B0',
      minTemperature: '+13\u00B0'),
  PerDay(
      day: 'Thu',
      imagePath: ImagePath.cloudy,
      weather: 'Cloudy',
      maxTemperature: '+25\u00B0',
      minTemperature: '+21\u00B0'),
  PerDay(
      day: 'Fri',
      imagePath: ImagePath.thunder,
      weather: 'Thunder',
      maxTemperature: '+23\u00B0',
      minTemperature: '+19\u00B0'),
  PerDay(
      day: 'Sat',
      imagePath: ImagePath.rainyDay,
      weather: 'Rainy',
      maxTemperature: '+25\u00B0',
      minTemperature: '+17\u00B0'),
  PerDay(
      day: 'Sun',
      imagePath: ImagePath.rainThunder,
      weather: 'Storm',
      maxTemperature: '+21\u00B0',
      minTemperature: '+18\u00B0'),
];
