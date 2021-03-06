import 'package:flutter/material.dart';
import 'package:comeback/function/util.dart';

class SliverAppBarExample extends StatefulWidget {
  @override
  _SliverAppBarExampleState createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Container(
                  padding: EdgeInsets.all(4),
                  child: Text('Abdazim', style: TextStyle(color: Colors.white, fontSize: 17.0,)),
                ),
                background: Image.asset('assets/images/36.jpg', fit: BoxFit.cover),
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 2,
              children: [for (var item in fakeData(10)) item,],
            )
          ],
        ),
      ),
    );
  }
}