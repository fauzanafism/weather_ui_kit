import 'package:flutter/material.dart';
import 'package:weather_ui_kit/presentation/widgets/my_appbar.dart';
import 'package:weather_ui_kit/presentation/widgets/top_background.dart';
import 'package:weather_ui_kit/presentation/widgets/weather_params.dart';

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
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const TopBackground(size: 1),
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 1 / 3,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                            offset: Offset(35, 30),
                            color: Colors.black12,
                            blurRadius: 22,
                            spreadRadius: -20)
                      ]),
                      child: const Image(
                        image: AssetImage('assets/images/day_rain.png'),
                        width: 100,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Tomorrow',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                        Row(
                          children: const [
                            Text(
                              '20',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 75),
                            ),
                            Text(
                              '/17\u00B0',
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 40),
                            )
                          ],
                        ),
                        const Text(
                          'Rainy - Cloudy',
                          style: TextStyle(
                              color: Colors.white38,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  color: Colors.lightBlue,
                  indent: 30,
                  endIndent: 30,
                ),
                const SizedBox(
                  height: 15,
                ),
                const WeatherParams()
              ],
            ),
          )
        ],
      ),
    );
  }
}
