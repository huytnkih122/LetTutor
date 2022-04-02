import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class TeacherDetail extends StatefulWidget {
  const TeacherDetail({Key? key}) : super(key: key);

  @override
  State<TeacherDetail> createState() => _TeacherDetailState();
}

class _TeacherDetailState extends State<TeacherDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Teacher"),
        ),
        body: SingleChildScrollView(
            child: Container(
                child: Column(children: [
          GFCard(
            height: 250,
            imageOverlay: NetworkImage(
                'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg'),
            showOverlayImage: true,
            color: Colors.white,
            boxFit: BoxFit.cover,
            titlePosition: GFPosition.end,
            showImage: true,
          ),
          titleName(),
          info(),
          booking(),
          bookingTest()
        ]))));
  }

  Widget titleName() {
    return GFListTile(
      margin: EdgeInsets.all(0),
      color: Colors.white,
      titleText: 'The Rock',
      subTitleText: 'Math Teacher',
      icon: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "4",
            style: TextStyle(fontSize: 25),
          ),
          Icon(Icons.star, color: Colors.amberAccent, size: 28), // ico, // text
        ],
      ),
    );
  }

  Widget info() {
    return GFListTile(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      color: Colors.white,
      subTitleText:
          'Teachers do more than teaching, and their impact extends far beyond the classroom. As a teacher, you are more than just an educator because you are a mentor, a confidant and a friend. One of the most common reasons to become a teacher is to make a difference in the lives of as many students as possible. Teachers have more chances to interact with students at all stages of development and from all walks of life. A great teacher always wants to help students along their path and to play a part in shaping the person they hope to become. Becoming a teacher lets you impart life lessons that they will never forget and puts you in a position to influence their decisions, behaviors, strengths, weaknesses and imaginations. Essentially, becoming a teacher lets you take part in shaping the next generation.',
    );
  }

  Widget booking() {
    return GFAccordion(
        title: '4/4',
        contentChild: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GFButton(
              onPressed: () {
                _showMyDialog();
              },
              text: "10:30",
              shape: GFButtonShape.pills,
            ),
            GFButton(
              onPressed: () {
                _showMyDialog();
              },
              text: "13:30",
              shape: GFButtonShape.pills,
            ),
            GFButton(
              onPressed: () {
                _showMyDialog();
              },
              text: "19:00",
              shape: GFButtonShape.pills,
            ),
          ],
        ));
  }

  Widget bookingTest() {
    return GFAccordion(
        title: '5/4',
        contentChild: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GFButton(
              onPressed: () {
                _showMyDialog();
              },
              text: "11:20",
              shape: GFButtonShape.pills,
            ),
            GFButton(
              onPressed: () {
                _showMyDialog();
              },
              text: "15:00",
              shape: GFButtonShape.pills,
            ),
            GFButton(
              onPressed: () {
                _showMyDialog();
              },
              text: "20:10",
              shape: GFButtonShape.pills,
            ),
          ],
        ));
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Join class'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Do you want to join this class?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Join'),
              child: const Text('Join'),
            ),
          ],
        );
      },
    );
  }
}
