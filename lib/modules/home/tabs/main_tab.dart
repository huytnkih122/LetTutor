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
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.symmetric(vertical: 70),
      child: Column(children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(children: [
            Text(
              'HLetTutor',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: CommonConstants.largeText,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),


          ])
        ],
      ),
        SizedBox(height: 100.0),
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
        CardUpcomming(),
        CardUpcomming()
      ],)
    );
  }
}
