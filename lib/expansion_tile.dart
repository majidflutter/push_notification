import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({Key? key}) : super(key: key);

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  ExpansionTile(
          title: Text('Expansion Tile'),
          children: <Widget>[
            ListTile(
              title: Text('List Item 1'),
            ),
            ListTile(
              title: Text('List Item 2'),
            ),
            ListTile(
              title: Text('List Item 3'),
            ),
          ],
          onExpansionChanged: (isExpanded){

          },
        ),

      ),
    );
  }
}
