import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class SpaceImageSliderPage extends StatelessWidget {
  final startIndex;
  final List<String> imgList;
  SpaceImageSliderPage(
      {Key? key, required this.startIndex, required this.imgList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: Get.size.height,
        initialPage: startIndex,
        viewportFraction: 1.0,
        enlargeCenterPage: false,
      ),
      items: imgList
          .map((item) => Container(
                child: Center(child: Image.network(item, fit: BoxFit.fitWidth)),
              ))
          .toList(),
    );
  }
}
