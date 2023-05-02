import 'package:flutter/material.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  final controller = PageController(initialPage: 1);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page View"),
        actions: [
          IconButton(
            onPressed: () {
              controller.previousPage(duration: Duration(seconds: 1), curve: Curves.easeInOut);
            },
            icon: Icon(Icons.keyboard_arrow_left),
          ),
          IconButton(
            onPressed: () {
              controller.nextPage(duration: Duration(seconds: 1), curve: Curves.easeInOut);
            },
            icon: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
      body: PageView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          print("Page ${index + 1}");
        },
        children: [
          Container(
            color: Colors.red,
            child: const Center(
              child: Text("Page 1"),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text("Page 2"),
            ),
          ),
          Container(
            color: Colors.black,
            child: const Center(
              child: Text("Page 3"),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text("Page 4"),
            ),
          ),
        ],
      ),
    );
  }
}
