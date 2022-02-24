import 'package:flutter/material.dart';
import 'package:weather_ui_kit/presentation/constant/image_path.dart';
import 'package:weather_ui_kit/presentation/pages/second_page.dart';
import 'package:weather_ui_kit/presentation/widgets/card_item.dart';

import '../widgets/my_appbar.dart';
import '../widgets/top_background.dart';
import '../widgets/weather_params.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: myAppBar(
          actionIcon: Icons.menu,
          leadingIcon: Icons.apps,
          title: 'Bogor',
          titleIcon: Icons.location_on),
      body: Stack(
        children: [
          // Background
          const TopBackground(
            size: 2,
          ),
          // Top Screen
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 2 / 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.circle,
                          size: 6,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Updating',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
                Container(
                    width: 170,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          offset: Offset(26, 30),
                          color: Colors.black12,
                          blurRadius: 19,
                          spreadRadius: -40)
                    ]),
                    child: Image(image: AssetImage(ImagePath.thunder))),
                Column(
                  children: const [
                    Text(
                      "21\u00B0",
                      style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Thunderstorm',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Monday, 17 May',
                      style: TextStyle(color: Colors.white60),
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.lightBlue,
                  indent: 40,
                  endIndent: 40,
                ),
                const WeatherParams()
              ],
            ),
          ),
          // Bottom Screen
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.only(top: 25, left: 35, right: 35),
              decoration: const BoxDecoration(
                color: Colors.black54,
              ),
              height: MediaQuery.of(context).size.height * 1 / 4 + 10,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Today',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(_createRoute());
                        },
                        child: const Text(
                          '7 days >',
                          style: TextStyle(color: Colors.white54, fontSize: 17),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1 / 9,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 1,
                        itemBuilder: (context, int index) {
                          return Wrap(
                            spacing: 20,
                            runSpacing: 20,
                            children: cardItems
                                .map((item) => Container(
                                      padding: const EdgeInsets.all(10),
                                      height: 110,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: item.color,
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            item.temperature,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Image(
                                            image: AssetImage(item.imagePath),
                                            height: 40,
                                          ),
                                          Text(item.time,
                                              style: const TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 13))
                                        ],
                                      ),
                                    ))
                                .toList(),
                          );
                        }),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const SecondPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0, 1);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}
