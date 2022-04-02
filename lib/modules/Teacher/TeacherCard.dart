import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:getwidget/getwidget.dart';
import 'TeacherDetail.dart';

class TeacherCard extends StatefulWidget {
  const TeacherCard({Key? key}) : super(key: key);

  @override
  State<TeacherCard> createState() => _TeacherCardState();
}

class _TeacherCardState extends State<TeacherCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 150,
        child:
        GFCard(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0) ,
          color: Colors.white,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.black, width: 1)),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          titlePosition: GFPosition.start,
          showImage: true,

          title: GFListTile(
            avatar: GFAvatar(
              backgroundImage: NetworkImage('https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg'),
            ),
            titleText: 'The Rock',
            subTitleText: 'Math Teacher',
            icon:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("4",
                  style: TextStyle(
                      fontSize: 25
                  ),),
                Icon(Icons.star,
                    color: Colors.amberAccent,
                    size: 28), // ico, // text
              ],
            ),
          ),
          content: Text("Some quick example text to build on the card"),
        ),
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const TeacherDetail()),);
      },
    );
  }
}
