import 'package:flutter/material.dart';
import 'package:LetTutor/modules/home/home.dart';
import 'package:LetTutor/shared/constants/colors.dart';
import 'package:LetTutor/shared/shared.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MainTab extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildWelcome());
  }

  Widget _buildWelcome() {
    return Container(
      height: 430,
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
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 50.0),
            BorderButton(
              text: 'Booking',
              onPressed: () {},
            ),
            SizedBox(height: 20.0),
           
          ])
        ],
      ),
      Text('Lich hoc sap toi')
      ],)
    );
  }
}
