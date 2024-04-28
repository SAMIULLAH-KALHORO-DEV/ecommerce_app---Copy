import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carouselCurrentIndex = 0.abs;

  void updatePageIndicator(index) {
    carouselCurrentIndex.obs = index;
  }
}
