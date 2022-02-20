import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_ui_kit/presentation/constant/ccolors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Ccolors.firstBlue,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 14),
            child: Icon(Icons.menu),
          )
        ],
        leading: const Icon(Icons.apps),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(Icons.location_on),
            Text(
              'Bogor',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 2 / 3,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      spreadRadius: -40,
                      offset: const Offset(0, 100),
                      color: Ccolors.lastBlue,
                      blurRadius: 90)
                ],
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                gradient: LinearGradient(
                    colors: [Ccolors.firstBlue, Ccolors.lastBlue],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 2 / 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                    width: 200,
                    child:
                        Image(image: AssetImage('assets/images/thunder.png'))),
                const Text(
                  "21\u00B0",
                  style: TextStyle(
                      fontSize: 120,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Text(
                  'Thunderstorm',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                const Text(
                  'Monday, 17 May',
                  style: TextStyle(color: Colors.white60),
                ),
                const SizedBox(height: 20),
                const Divider(
                  color: Colors.lightBlue,
                  indent: 40,
                  endIndent: 40,
                ),
                const SizedBox(height: 20),
                Row(
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
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black54,
              ),
              height: MediaQuery.of(context).size.height * 1 / 4 + 10,
              
            ),
          )
        ],
      ),
    );
  }
}
