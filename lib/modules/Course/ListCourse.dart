import 'package:flutter/material.dart';
import 'CourseCard.dart';
class ListCourses extends StatefulWidget {
  const ListCourses({Key? key}) : super(key: key);

  @override
  State<ListCourses> createState() => _ListCoursesState();
}

class _ListCoursesState extends State<ListCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CourseCard(),
    );
  }
}
