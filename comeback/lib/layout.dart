import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:comeback/function/util.dart';

class LayoutBuilderExample extends StatefulWidget {
  const LayoutBuilderExample({Key? key}) : super(key: key);

  @override
  _LayoutBuilderExampleState createState() => _LayoutBuilderExampleState();
}

class _LayoutBuilderExampleState extends State<LayoutBuilderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Column(
              children: [
                Container(
                height: 200,
                  child: ListView.builder(
                    itemCount: 40,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text('Cards $index'),
                      ),
                      color: Colors.blue,
                    )
                )
            ),
              ],
            );
          } else {
            return Container(
              child: ListView.builder(
                itemCount: 40,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Text('Cards $index'),
                    ),
                    color: Colors.blue,
                  )
              )
            );
          }
        }),
      );
  }
}
