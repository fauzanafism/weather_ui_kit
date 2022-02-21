import 'package:flutter/material.dart';
import 'package:weather_ui_kit/presentation/constant/ccolors.dart';
import 'package:weather_ui_kit/presentation/constant/image_path.dart';

class CardItem {
  final String temperature;
  final String imagePath;
  final String time;
  final Color color;

  CardItem({
    required this.temperature,
    required this.imagePath,
    required this.time,
    required this.color
  });
}

final List<CardItem> cardItems = [
  CardItem(temperature: '23\u00B0', imagePath: ImagePath.partialCloudDay, time: '10:00', color: Colors.black),
  CardItem(temperature: '21\u00B0', imagePath: ImagePath.rainThunder, time: '11:00',color: Ccolors.firstBlue     ),
  CardItem(temperature: '22\u00B0', imagePath: ImagePath.rainyDay, time: '12:00', color: Colors.black),
  CardItem(temperature: '19\u00B0', imagePath: ImagePath.rainyDay, time: '13:00', color: Colors.black)
];