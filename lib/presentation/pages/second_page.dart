import 'package:flutter/material.dart';
import 'package:weather_ui_kit/presentation/widgets/my_appbar.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
          leadingIcon: Icons.arrow_back,
          titleIcon: Icons.calendar_today,
          title: '7 days',
          actionIcon: Icons.menu),
    );
  }
}
