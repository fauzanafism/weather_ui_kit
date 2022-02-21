import 'package:flutter/material.dart';
import 'package:weather_ui_kit/presentation/constant/image_path.dart';
import 'package:weather_ui_kit/presentation/widgets/my_appbar.dart';
import 'package:weather_ui_kit/presentation/widgets/top_background.dart';
import 'package:weather_ui_kit/presentation/widgets/weather_params.dart';
import 'package:weather_ui_kit/presentation/widgets/weather_per_day.dart';

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
                      child: Image(
                        image: AssetImage(ImagePath.rainyDay),
                        width: 100,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Tomorrow',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                        Row(
                          children: const [
                            Text(
                              '20',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 60),
                            ),
                            Text(
                              '/17\u00B0',
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 35),
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
                  height: 4,
                ),
                const Divider(
                  color: Colors.lightBlue,
                  indent: 30,
                  endIndent: 30,
                ),
                const SizedBox(
                  height: 4,
                ),
                const WeatherParams()
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 3 / 5,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
              color: Colors.black54,
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: ((context, index) {
                    return Wrap(
                      runSpacing: 40,
                      spacing: 40,
                      children: weatherPerDay
                          .map((item) => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(item.day,
                                      style: const TextStyle(
                                          color: Colors.white54,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    width: 160,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 12),
                                          child: Image(
                                            alignment: Alignment.center,
                                            image: AssetImage(item.imagePath),
                                            width: 35,
                                            // fit: BoxFit.scaleDown,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        SizedBox(
                                          width: 70,
                                          child: Text(item.weather,
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 83,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(item.maxTemperature,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500)),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Text(item.minTemperature,
                                            style: const TextStyle(
                                                color: Colors.white54,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500))
                                      ],
                                    ),
                                  )
                                ],
                              ))
                          .toList(),
                    );
                  })),
            ),
          )
        ],
      ),
    );
  }
}
