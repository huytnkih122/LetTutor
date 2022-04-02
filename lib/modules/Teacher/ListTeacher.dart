import 'package:flutter/material.dart';
import 'TeacherCard.dart';
class ListTeacher extends StatefulWidget {
  const ListTeacher({Key? key}) : super(key: key);

  @override
  State<ListTeacher> createState() => _ListTeacherState();
}

class _ListTeacherState extends State<ListTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: TeacherCard(),
    );
  }
}



