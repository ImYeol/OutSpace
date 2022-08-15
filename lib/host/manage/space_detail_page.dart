import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:out_space/chat/chat_screen.dart';
import 'package:out_space/chat/make_deal_page.dart';
import 'package:out_space/host/manage/space_images_page.dart';
import 'package:out_space/host/manage/space_manage_page.dart';
import 'package:out_space/util/header_textview.dart';

class SpaceDetailPage extends StatelessWidget {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  SpaceDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _singleChildScrollView(),
      bottomSheet: _getBottomButtons(),
    );
  }

  Widget _singleChildScrollView() {
    return ListView(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      scrollDirection: Axis.vertical,
      children: [
        ImageSliderHeader(
            imgList: imgList,
            width: Get.size.width,
            height: Get.size.height / 3),
        _spaceDescription()
      ],
    );
  }

  Widget _spaceDescription() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Column(children: [
        _spaceTitle(),
        const Divider(
          height: 10,
          color: Colors.black,
        ),
        _hostInformation(),
        const Divider(
          height: 10,
          color: Colors.black,
        ),
        _dateInformation(),
        const Divider(
          height: 10,
          color: Colors.black,
        ),
        _description(),
        const Divider(
          height: 10,
          color: Colors.black,
        ),
        _locationInformation(),
        const Divider(
          height: 10,
          color: Colors.black,
        ),
        _locationInformation(),
        _locationInformation(),
      ]),
    );
  }

  Widget _spaceTitle() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 창고 이름
        const Text(
          "수원시 메인창고",
          style: TextStyle(
              fontSize: 30.0, color: Colors.black, fontWeight: FontWeight.bold),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        // 창고 위치
        Row(
          children: [
            const Icon(
              Icons.map,
              size: 15,
            ),
            Container(
              width: 5,
            ),
            const Text(
              "수원시 영통구 123-123",
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
        // 창고 리뷰
        Row(
          children: [
            const Icon(
              Icons.star,
              size: 15,
              color: Colors.yellow,
            ),
            Container(
              width: 5,
            ),
            const Text(
              "리뷰 4.3",
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }

  Widget _hostInformation() {
    return ListTile(
      minLeadingWidth: 5,
      leading: const CircleAvatar(
        radius: 12,
        backgroundImage: AssetImage("images/profile_icon_sample.png"),
      ),
      title: Text("ThisIsHostId"),
      trailing: Text("정보보기"),
    );
  }

  Widget _dateInformation() {
    return ListTile(
      minLeadingWidth: 5,
      title: Text("7.31 - 8.1"),
      leading: Icon(
        Icons.calendar_month,
        size: 20,
      ),
      trailing: Text("변경"),
    );
  }

  Widget _description() {
    return ListTile(
      title: Text("창고설명"),
      subtitle: Text("가나다라마바산ㅇㅁㄴㄹㅇㄹㄴㅁ"),
    );
  }

  Widget _locationInformation() {
    return ListTile(
      title: Text("위치"),
      subtitle: Container(
        width: Get.size.width,
        height: Get.size.height / 5,
        color: Colors.blue,
      ),
    );
  }

  Widget _getBottomButtons() {
    return ListTile(
        title: Text("5000원 / 박"),
        subtitle: Text("7.31 - 8.1"),
        trailing: ElevatedButton(
          onPressed: () => Get.to(() => MakeDealPage()),
          child: Text("약속잡기"),
        ));
  }
}

class ImageSliderHeader extends StatefulWidget {
  final List<String> imgList;
  final double height;
  final double width;
  const ImageSliderHeader(
      {Key? key,
      required this.imgList,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  State<ImageSliderHeader> createState() => _ImageSliderHeaderState();
}

class _ImageSliderHeaderState extends State<ImageSliderHeader> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Stack(
        fit: StackFit.expand,
        children: [_imageSlider(), _appBar(), _indicator()],
      ),
    );
  }

  Widget _imageSlider() {
    return CarouselSlider(
      options: CarouselOptions(
          height: Get.mediaQuery.size.height,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
            });
          }),
      items: widget.imgList
          .map((item) => InkWell(
                child: Image.network(item, fit: BoxFit.fill),
                onTap: () => Get.to(SpaceImagesPage(
                  imgList: widget.imgList,
                )),
              ))
          .toList(),
    );
  }

  Widget _appBar() {
    return SafeArea(
      child: Align(
        alignment: Alignment.topLeft,
        child: Row(
          children: [
            IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              iconSize: 25,
            )
          ],
        ),
      ),
    );
  }

  Widget _indicator() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: EdgeInsets.only(bottom: 20, right: 20),
        child: Text(
          "$_currentIndex / ${widget.imgList.length}",
          style: const TextStyle(
            fontSize: 12.0,
            color: Colors.white,
            backgroundColor: Colors.black54,
          ),
        ),
      ),
    );
  }
}
