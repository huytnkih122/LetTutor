import 'package:flutter/material.dart';
import 'package:LetTutor/modules/home/home.dart';
import 'package:LetTutor/shared/constants/colors.dart';
import 'package:LetTutor/shared/shared.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:LetTutor/modules/home/card/cardupcomming.dart';

class MainTab extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildWelcome());
  }

  Widget _buildWelcome() {
    return Scaffold(
      body: Container(
          color: Colors.blue,
          child: Column(children: [
            Image.network("https://elearningindustry.com/wp-content/uploads/2021/12/shutterstock_1834087759.jpg"),
            Text(
              'Upcoming',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: CommonConstants.largeText,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            CardUpcomming()
          ],)
      )
    );
  }
}
