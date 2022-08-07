import 'package:flutter/material.dart';
import 'package:navi_mobdev/list_item.dart';
import 'package:navi_mobdev/shades_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //navigate to shades page
  void navigateToShadePage(BuildContext context, MaterialAccentColor color) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return ShadesPage(color: color);
    }));
  }

  void navigationToShadePageStatic(
      BuildContext context, MaterialAccentColor color) {
    Navigator.pushNamed(
      context,
      '/shades',
      arguments: color, //optional (only if we wanna pass smtg)
    );
  }

  void toColorPage() {
    Navigator.pushNamed(
      context,
      '/colorPage',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Colors')),
        body: ListView.builder(
          itemCount: Colors.accents
              .length, //how many items we have (colros.accents return a list of color) eg itemCount: 2,
          itemBuilder: (BuildContext context, index) {
            return GestureDetector(
                onTap: () {
                  // navigateToShadePage(context, Colors.accents.elementAt(index));
                  navigationToShadePageStatic(
                      context, Colors.accents.elementAt(index));
                },
                child: ListItem(
                  color: Colors.accents.elementAt(index),
                ));
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: toColorPage,
          tooltip: 'Color Page',
          child: const Icon(Icons.colorize),
        ));
  }
}
