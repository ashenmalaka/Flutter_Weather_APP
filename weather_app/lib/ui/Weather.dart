import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Weather extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    Widget dataSection = Container(
      child: Text(
        DateFormat('MMMM d, H:m').format(DateTime.now()),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24.0
          )
      ),
    );
    return Container(
      padding: const EdgeInsets.all(60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          dataSection
         ],
        ),
    );
  }

}

