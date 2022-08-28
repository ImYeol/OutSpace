import 'package:flutter/material.dart';

class NearbyStorageListItem extends StatelessWidget {
  const NearbyStorageListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildThumbnailImage(),
        _buildDescription(context)
      ],
    );
  }

  Widget _buildThumbnailImage() {
    return const Image(
      image: AssetImage('images/sample_image.jpeg'),
      width: 200,
      height: 200,
      fit: BoxFit.cover,
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Text("test description", style: Theme.of(context).textTheme.caption);
  }
}
