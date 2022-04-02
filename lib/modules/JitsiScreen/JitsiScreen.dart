import 'package:flutter/material.dart';

class JitsiScreen extends StatefulWidget {
  const JitsiScreen({Key? key}) : super(key: key);

  @override
  State<JitsiScreen> createState() => _JitsiScreenState();
}

class _JitsiScreenState extends State<JitsiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Call"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.black,
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.camera_alt,
        color: Colors.white,),
      ),
    );
  }
}
