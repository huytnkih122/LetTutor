import 'package:LetTutor/modules/Book/ListBook.dart';
import 'package:flutter/material.dart';
import 'package:LetTutor/modules/home/tabs/InboxPage.dart';
import 'package:get/get.dart';
import 'package:LetTutor/routes/routes.dart';
import 'package:LetTutor/modules/Teacher/ListTeacher.dart';
import 'package:LetTutor/modules/Course/ListCourse.dart';
class TabContent extends StatefulWidget {
  const TabContent({Key? key}) : super(key: key);

  @override
  State<TabContent> createState() => _TabContentState();
}

class _TabContentState extends State<TabContent> {



  final upperTab = const TabBar(tabs: <Tab>[
    Tab(child: Text("Teacher",
    style: TextStyle(fontSize: 15),)),
    Tab(child: Text("Course",
      style: TextStyle(fontSize: 15),)),
    Tab(child: Text("Book",
      style: TextStyle(fontSize: 15),)),
  ]);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(

        appBar: upperTab,
        body: TabBarView(
          children: [
            ListTeacher(),
            ListCourses(),
            ListBooks(),
          ],
        ),
      ),
    );
  }
}
