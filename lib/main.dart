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

 
    // Since the code for building each row would be almost identical,
    // it's most efficient to create a nested function, such as
    // `buildButtonColumn()`, which takes an Icon and Text,
    // and returns a column with its widgets painted in the primary color.
    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Icon(icon, color: color),
            new Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: new Text(
                label,
                style: new TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ),
            ),
          ],
      );
    }
    // The build function adds the icon directly to the column.
    // Put text into a Container to add padding above the text,
    // separating it from the icon.
    //
    // Build the row containing these columns by calling the function
    // and passing the icon and text specific to that column.
    // Align the columns along the main using MainAxisAlignment.spaceEvenly
    // to arrange the free space evenly before, between, and after each column.
    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );
    // Define the text section, which is fairly long, as a variable.
    // Put the text in a Container to enable adding 32 pixels of paddin
    // along each edge. The `softwrap` property indicates wheter
    // the text should break on soft link breaks, such as periods or commons.
    Widget textSection = new Container(
        padding: const EdgeInsets.all(32.0),
        child: new Text(
          '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
          ''',
          softWrap: true,
        ),
    );

    // The button section contains 3 columns that use the same layout
    //   - an icon over a row of text.
    // The columns in this row are evenly spaces, and the text
    // and icons are painted with the primary color, which is set to
    // blue in the app's build() method;
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
    ),
  }
}
