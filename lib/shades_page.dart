import 'package:flutter/material.dart';
import 'package:navi_mobdev/list_item.dart';

class ShadesPage extends StatelessWidget {
  final MaterialAccentColor color; //create para for color

  ShadesPage({required this.color});

  @override
  Widget build(BuildContext context) {
    final List<Color> accentShades = [
      color.shade100,
      color.shade200,
      color.shade400,
      color.shade700,
    ]; //create array of color

    return Scaffold(
      appBar: AppBar(
        title: Text('Shades'),
        backgroundColor: (color),
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return ListItem(color: accentShades.elementAt(index));
          }),
    );
  }
}
