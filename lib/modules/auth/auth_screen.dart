import 'package:flutter/material.dart';
import 'package:LetTutor/modules/auth/auth.dart';
import 'package:LetTutor/routes/routes.dart';
import 'package:LetTutor/shared/shared.dart';
import 'package:get/get.dart';

class AuthScreen extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: _buildItems(context),
        ),
      ),
    );
  }

  Widget _buildItems(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      children: [
        Icon(
          Icons.cast_for_education,
          size: SizeConfig().screenWidth * 0.26,
          color: Colors.blueGrey,
        ),
        SizedBox(height: 20.0),
        Text(
          'HLetTutor',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: CommonConstants.largeText,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).textTheme.headline6!.color,
          ),
        ),
        SizedBox(height: 50.0),
        BorderButton(
          text: 'Sign In',
          onPressed: () {
            Get.toNamed(Routes.AUTH + Routes.LOGIN, arguments: controller);
          },
        ),
        SizedBox(height: 20.0),
        BorderButton(
          text: 'Sign Up',
          onPressed: () {
            Get.toNamed(Routes.AUTH + Routes.REGISTER, arguments: controller);
          },
        ),
        SizedBox(height: 62.0),
      ],
    );
  }
}
