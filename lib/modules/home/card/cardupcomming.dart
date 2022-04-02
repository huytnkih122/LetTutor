import 'package:flutter/material.dart';
import 'package:LetTutor/shared/shared.dart';
import 'package:LetTutor/shared/widgets/focused_menu/focused_menu_holder.dart';
import 'package:LetTutor/modules/JitsiScreen/JitsiScreen.dart';
class CardUpcomming extends StatefulWidget {
  @override
  _CardUpcommingState createState() => _CardUpcommingState();
}

class _CardUpcommingState extends State<CardUpcomming> {
  @override
  void initState() {
    super.initState();
  }

  void onTap() {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => const JitsiScreen()),);
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
        color: Colors.white,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white, width: 1)),
        shadowColor: Colors.blueGrey,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("10:20", style: TextStyle(fontSize: 20)),
                  Text("20/3", style: TextStyle(fontSize: 15)),
                ],
              ),
              title: Text(
                "Learn Math",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('Teacher: Mark'),
            ),
          ],
        ),
      ),
      onTap: () {
        onTap();
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
