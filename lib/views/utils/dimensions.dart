// import 'package:flutter/material.dart';
import 'package:get/get.dart';




final double screenHeight = Get.context!.height;
final double screenWidth = Get.context!.width;

double getHeight(double convertHeight) {
  const figmaDesignHeight = 812;
  double newScreenHeight = figmaDesignHeight / convertHeight;
  return 812 / newScreenHeight;
}

double getWidth(double convertWidth) {
  const figmaDesignWidth = 375;
  double newScreenWidth = figmaDesignWidth / convertWidth;
  return 375 / newScreenWidth;
}