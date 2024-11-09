import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'const.dart';


Widget backButton({bgcolor, color}) {
  return CircleAvatar(
      backgroundColor: bgcolor,
      radius: 15,
      child: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 15,
            color: color,
          ),
          onPressed: () {}));
}

Widget blueBackButton(Color iconColor) {
  return CircleAvatar(
      backgroundColor: nextButtonColor,
      radius: 20,
      child: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 15,
            color: iconColor,
          ),
          onPressed: () {
            Get.back();
          }));
}
