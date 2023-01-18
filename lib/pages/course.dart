import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  @override
  _CourseState createState() => _CourseState();
}
class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Course')),
      body: Center(
        child: Text(
          'Course Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
