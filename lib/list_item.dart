import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Color color;

  const ListItem({Key? key, required this.color}); //required means we must pass the color/parameter

  @override
  Widget build(BuildContext context) {
    return
     Container(
          height: 100,
          color: color,
          margin: EdgeInsets.only(bottom: 10),
        );
  }
}