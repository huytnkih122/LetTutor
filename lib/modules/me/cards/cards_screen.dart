import 'package:flutter/material.dart';
import 'package:LetTutor/shared/shared.dart';
import 'package:LetTutor/shared/widgets/focused_menu/focused_menu_holder.dart';


class CardsScreen extends StatefulWidget {
  @override
  _CardsScreenState createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {


  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidget.appBar(
        context,
        'Cards',
        Icons.arrow_back,
        Colors.black,
      ),
      body: Container(
        color: Colors.amber,
      )
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
