import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child : Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Tab 1",icon: Icon(Icons.home),),
              Tab(text: "Tab 2",icon: Icon(Icons.star),),
              Tab(text: "Tab 3",icon: Icon(Icons.person),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Page 1",style: TextStyle(fontSize: 24),),),
            Center(child: Text("Page 2",style: TextStyle(fontSize: 24),),),
            Center(child: Text("Page 3",style: TextStyle(fontSize: 24),),),
          ],
        ),
      ),
    );
  }
}
