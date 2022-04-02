import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:getwidget/getwidget.dart';

class CourseCard extends StatefulWidget {
  const CourseCard({Key? key}) : super(key: key);

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: GFCard(
          height: 320,
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          color: Colors.white,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.black, width: 1)),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          titlePosition: GFPosition.end,
          showImage: true,
          buttonBar: GFButtonBar(
            children: <Widget>[
              GFButton(
                shape: GFButtonShape.pills,
                onPressed: () {},
                text: 'Join',
              ),
            ],
          ),
          image: Image.network(
            'https://cellphones.com.vn/sforum/wp-content/uploads/2021/09/00.-Machine-Learing.png',
            height: 200,
          ),
          title: GFListTile(
            titleText: 'Machine Learning',
            subTitleText: 'The Rock',
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "4",
                  style: TextStyle(fontSize: 25),
                ),
                Icon(Icons.star,
                    color: Colors.amberAccent, size: 28), // ico, // text
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        // Navigator.push(
        //   context, MaterialPageRoute(builder: (context) => const CourserDetail()),);
      },
    );
  }
}
