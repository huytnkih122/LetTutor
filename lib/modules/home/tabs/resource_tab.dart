import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:LetTutor/modules/home/home.dart';
import 'package:LetTutor/shared/constants/colors.dart';
import 'package:LetTutor/shared/shared.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ResourceTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildGridView());
  }

  Widget _buildGridView() {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) => new Container(
        color: ColorConstants.lightGray,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: 'https://reqres.in/img/faces/1-image.jpg',
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            Text('Ly Dang Huy')
          ],
        ),
      ),
      staggeredTileBuilder: (int index) => new StaggeredTile.count(2, 2),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}
