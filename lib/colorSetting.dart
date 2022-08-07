import 'package:flutter/material.dart';

class colorSetting extends StatefulWidget {
  const colorSetting({Key? key}) : super(key: key);

  @override
  State<colorSetting> createState() => _colorSettingState();
}

class _colorSettingState extends State<colorSetting> {
  int redColor = 1;
  int greenColor = 1;
  int blueColor = 1;

  void selectColor(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
            content: Row(children: [
              Text('You have selected'),
              SizedBox(width: 16),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(redColor, greenColor, blueColor, 1),
                  shape: BoxShape.circle,
                ),
              ),
            ]),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: (Text('Okay')))
            ]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Color Setting'),
        ),
        body: Column(
          children: [
            Slider(
              value: redColor.toDouble(),
              min: 0.0,
              max: 255.0,
              onChanged: (double value) {
                setState(() {
                  redColor = value.toInt();
                });
              },
            ),
            Slider(
              value: greenColor.toDouble(),
              min: 0.0,
              max: 255.0,
              onChanged: (double value) {
                setState(() {
                  greenColor = value.toInt();
                });
              },
            ),
            Slider(
              value: blueColor.toDouble(),
              min: 0.0,
              max: 255.0,
              onChanged: (double value) {
                setState(() {
                  blueColor = value.toInt();
                });
              },
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Color.fromRGBO(redColor, greenColor, blueColor, 1),
                shape: BoxShape.circle,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                  selectColor(context);
                },
                child: const Text('Select the color'))
          ],
        ));
  }
}
