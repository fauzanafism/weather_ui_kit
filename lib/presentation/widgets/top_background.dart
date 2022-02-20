import 'package:flutter/material.dart';

import '../constant/ccolors.dart';

class TopBackground extends StatelessWidget {
  // Size is 1 or 2 only from /3
  final int size;
  const TopBackground({
    Key? key,
    required this.size
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * size / 3,
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
    );
  }
}