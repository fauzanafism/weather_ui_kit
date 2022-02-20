import 'package:flutter/material.dart';

import '../constant/ccolors.dart';

AppBar myAppBar(
      {required IconData? leadingIcon,
      required IconData? titleIcon,
      required String? title,
      required IconData? actionIcon}) {
    return AppBar(
      backgroundColor: Ccolors.firstBlue,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: Icon(actionIcon),
        )
      ],
      leading: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 32,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white)),
          ),
          Icon(
            leadingIcon,
            size: 21,
          ),
        ],
      ),
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(titleIcon),
          SizedBox(width: 5,),
          Text(
            title!,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );}