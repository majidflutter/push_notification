import "package:flutter/material.dart";

class ExpansionPanelWidget extends StatefulWidget {
  const ExpansionPanelWidget({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelWidget> createState() => _ExpansionPanelWidgetState();
}

class _ExpansionPanelWidgetState extends State<ExpansionPanelWidget> {
  static const loremIpsum =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).";
  final List<Item> items = [
    Item(header: "Panel 1", body: loremIpsum),
    Item(header: "Panel 2", body: loremIpsum),
    Item(header: "Panel 3", body: loremIpsum),
    Item(header: "Panel 4", body: loremIpsum),
    Item(header: "Panel 5", body: loremIpsum),
    Item(header: "Panel 6", body: loremIpsum),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Panel"),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, isExpanded) {
            setState(() {
              items[index].isExpanded = !isExpanded;
            });
          },
          children: items
              .map((item) => ExpansionPanel(
                  canTapOnHeader: true,
                  isExpanded: item.isExpanded,
                  headerBuilder: (context, isExpanded) => ListTile(
                        title: Text(item.header),
                      ),
                  body: Text(item.body)))
              .toList(),
        ),
      ),
    );
  }
}

class Item {
  final String header;
  final String body;
  bool isExpanded;

  Item({required this.header, required this.body, this.isExpanded = false});
}
