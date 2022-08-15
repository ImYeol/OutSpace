import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:out_space/host/manage/space_image_slider_page.dart';

class SpaceImagesPage extends StatelessWidget {
  final List<String> imgList;
  const SpaceImagesPage({Key? key, required this.imgList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_left_rounded, size: 25)),
        title: const Text("관열 창고"),
      ),
      body: SafeArea(
        child: _imageListView(),
      ),
    );
  }

  Widget _imageListView() {
    return ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) => InkWell(
              onTap: () => Get.to(
                  SpaceImageSliderPage(startIndex: index, imgList: imgList)),
              child: Container(
                child: Center(
                    child: Image.network(imgList[index], fit: BoxFit.fitWidth)),
              ),
            ));
  }
}
