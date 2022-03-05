import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:LetTutor/modules/home/home.dart';
import 'package:LetTutor/routes/routes.dart';
import 'package:LetTutor/shared/shared.dart';
import 'package:get/get.dart';

class MeTab extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: _buildMainContent()
        ),
        
      ],
    );
  }

  Widget _buildUserInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Me',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        _buildAvatar(),
        SizedBox(
          height: 10,
        ),
        Text(
          'Dang Huy',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    )
    ]);
  }

  Widget _buildAvatar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: 130,
            width: 110,
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: 
                  'http://www.thestyleinspiration.com/wp-content/uploads/2019/02/new-york-main-image-31.jpg',
              
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItems() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: SizeConfig().screenHeight * .42,
        decoration: BoxDecoration(
          color: ColorConstants.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 8,
              ),
              IconTitleItem(
                backgroundColor: ColorConstants.lightGray,
                paddingLeft: 16,
                paddingTop: 16,
                paddingRight: 16,
                padingBottom: 16,
                marginRight: 16,
                marginLeft: 5,
                drawablePadding: 10.0,
                title: 'sign out',
                icon: 'assets/svgs/icon_sign_out.svg',
                onTap: () {
                  Get.toNamed(Routes.AUTH);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainContent() {
    return Material(child: buildBody());
  }

  Widget buildBody() {
    return  ListView(
            children: <Widget>[
              imageProfile(),
              SizedBox(
                height: 18,
              ),
              infoUser(),
              heading("Thông tin"),
              infoQuar(),
              SizedBox(
                height: 20,
              ),
              //ProfileSetting(_languageStore,theme)
              setting(),
              IconTitleItem(
                backgroundColor: ColorConstants.lightGray,
                paddingLeft: 16,
                paddingTop: 16,
                paddingRight: 16,
                padingBottom: 16,
                marginRight: 16,
                marginLeft: 5,
                drawablePadding: 10.0,
                title: 'sign out',
                icon: 'assets/svgs/icon_sign_out.svg',
                onTap: () {
                  Get.toNamed(Routes.AUTH);
                }
              )
              
            ],
          );
  }

  Widget imageProfile() {
    return Container(
        height: 163,
        color: Colors.green,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 30,
                  top: 30,
                  bottom: 30),
              child: CircleAvatar(
                radius: 36.5,
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/photos/portrait-of-smiling-handsome-man-in-blue-tshirt-standing-with-crossed-picture-id1045886560?k=20&m=1045886560&s=612x612&w=0&h=JL8Dy_sRUXJo6PofsX7XkQpWjSTDhD8LuV071LMlb3Y='),
                backgroundColor: Colors.transparent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30,
                  top: 65),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Đăng Huy",
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text(
                       "Học sinh",
                        style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                  )
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget infoUser() {
    return Column(
      children: [
        // rowInfo(AppLocalizations.of(context).translate('year_of_birth'),
        //     "profile.dob!.toString()"),
        rowInfo(
          "Email",
          "lydan110@gmail.com",
        ),
        //     rowInfo(AppLocalizations.of(context).translate('id_number'),
        //         _profileStore.profile?.identityCard ?? AppLocalizations.of(context)
        //                         .translate('unknown_notice')),
        //     rowInfo(AppLocalizations.of(context).translate('nationality'),
        // _profileStore.profile?.nationality ?? AppLocalizations.of(context)
        //                         .translate('unknown_notice')),
      ],
    );
  }

  Widget infoQuar() {
    return Column(
      children: [
        rowInfo(
            "Giới tính",
            "Nam"),
        rowInfo(
            "Số điện thoại",
            "012939123"),
      ],
    );
  }

  Widget rowInfo(String name, String value) {
    return Container(
        padding: EdgeInsets.only(
            left: 27,
            right: 35),
        color: Colors.white,
        height: 48,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name, style: TextStyle(color: Colors.black38, fontSize: 16, fontWeight: FontWeight.w400, height: 1.5)),
            Text(value, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600)),
          ],
        ));
  }

  Widget setting() {
    return Column(
      children: [
        changeLanguage("Language")
      ],
    );
  }

  Widget heading(String value) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
            left: 27.5,
            top: 28,
            bottom: 17),
        child: Text(
          value,
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget row2(String value) {
    return Container(
        color: Colors.white,
        height: 48,
        padding: EdgeInsets.only(
            left: 27,
            right: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(value, style: TextStyle(color: Colors.black45, fontSize: 16, fontWeight: FontWeight.w400, height: 1.5)),
            Icon(Icons.chevron_right, size: 20, color: Colors.black)
          ],
        ));
  }

  Widget changeLanguage(String name) {
    return Container(
      color: Colors.white,
      height: 48,
      padding: EdgeInsets.only(
          left: 27,
          right: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: TextStyle(color: Colors.black45, fontSize: 16, fontWeight: FontWeight.w400, height: 1.5)),
          Text("Eng"),
        ],
      ),
    );
  }

}
