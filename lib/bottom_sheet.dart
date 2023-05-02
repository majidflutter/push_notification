import 'package:flutter/material.dart';

class WidgetsTraining extends StatefulWidget {
  const WidgetsTraining({Key? key}) : super(key: key);

  @override
  State<WidgetsTraining> createState() => _WidgetsTrainingState();
}

class _WidgetsTrainingState extends State<WidgetsTraining> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Open Bottom Sheet"),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FlutterLogo(
                          size: 120,
                        ),
                        FlutterLogo(
                          size: 120,
                        ),
                        FlutterLogo(
                          size: 120,
                        ),
                        FlutterLogo(
                          size: 120,
                        ),
                        FlutterLogo(
                          size: 120,
                        ),
                        FlutterLogo(
                          size: 120,
                        ),
                        FlutterLogo(
                          size: 120,
                        ),
                        FlutterLogo(
                          size: 120,
                        ),
                        Center(
                          child: ElevatedButton(
                            child: Text("Close"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ));
          },
        ),
      ),
    );
  }
}
