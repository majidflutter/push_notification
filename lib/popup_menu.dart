import 'package:flutter/material.dart';

class PopUpMenu extends StatefulWidget {
  const PopUpMenu({Key? key}) : super(key: key);

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PopUp Menu"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Item 1"),
                  value: MenuItem.item1,
                ),
                PopupMenuItem(
                  child: Text("Item 2"),
                  value: MenuItem.item2,
                ),
                PopupMenuItem(
                  child: Text("Item 3"),
                  value: MenuItem.item3,
                ),
                PopupMenuItem(
                  child: Text("Item 4"),
                  value: MenuItem.item4,
                ),
              ];
            },
            onSelected: (value) {
              if (value == MenuItem.item1) {
              } else if (value == MenuItem.item2) {
              } else if (value == MenuItem.item3) {
              } else if (value == MenuItem.item4) {}
            },
          )
        ],
      ),
      body: Container(),
    );
  }
}

enum MenuItem { item1, item2, item3, item4 }
