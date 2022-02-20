import 'package:flutter/material.dart';
import 'package:weather_ui_kit/presentation/constant/ccolors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 2 / 3,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
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
                          child: const Text(
                            'Updating',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
