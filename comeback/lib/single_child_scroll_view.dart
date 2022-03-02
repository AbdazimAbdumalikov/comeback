import 'package:flutter/material.dart';
import 'package:comeback/function/util.dart';


class SingleChildScrollViewExample extends StatefulWidget {
  SingleChildScrollViewExample({Key? key}) : super(key: key);

  @override
  _SingleChildScrollViewExampleState createState() => _SingleChildScrollViewExampleState();
}

class _SingleChildScrollViewExampleState extends State<SingleChildScrollViewExample> {
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scroll'),),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            for (final item in fakeData(100, true)) item,
          ],
        ),
      ),
    );
  }
}