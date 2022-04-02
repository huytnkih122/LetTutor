import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
class BookCard extends StatefulWidget {
  const BookCard({Key? key}) : super(key: key);

  @override
  State<BookCard> createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child:
        GFCard(
          height: 85,
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0) ,
          color: Colors.white,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.black, width: 1)),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          titlePosition: GFPosition.end,

          title: GFListTile(
            avatar: Image.network('https://images-na.ssl-images-amazon.com/images/I/71xNN7j094L.jpg',
            height: 50,),
            titleText: 'Head First Design Pattern',
            subTitleText: 'Eric Freeman & Elisabeth Robson',
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
