import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // First, build the left column in the title section.
    // Putting column inside an `Expanded widget`
    // stretches the column to use all remaining free space in the row.
    // Setting the `crossAxisAlignment` property to
    //  `CrossAxisAlignment.start` positions the column to the beginning
    // of the row.
    //
    // Putting the first row of text inside the Container enalbes adding
    // padding. The second child in the Column, allso text, displays as
    // grey.
    // The last two items in the title row are a start icon, painted red,
    // and the text "41". Place the entire row in a Container and pad
    // along each edge with 32 pixels.
    //
    // Here's the code that implements the title row.
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );
  }
}
