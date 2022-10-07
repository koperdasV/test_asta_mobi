import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Flexible(
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ]),
      ),
    );
  }
}
