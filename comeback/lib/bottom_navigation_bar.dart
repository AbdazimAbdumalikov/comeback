import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:comeback/single_child_scroll_view.dart';
import 'package:comeback/sliver_app_bar.dart';
import 'package:comeback/text_field.dart';
import 'package:comeback/layout.dart';


class TabItem {
  String title;
  Icon icon;
  TabItem({required this.title, required this.icon,});
}

final List<TabItem> _tabBar = [
  TabItem(title: 'single', icon: Icon(Icons.list, color: Colors.blue,),),
  TabItem(title: 'sliver', icon: Icon(Icons.line_style_outlined, color: Colors.blue,)),
  TabItem(title: 'layout', icon: Icon(Icons.rotate_90_degrees_ccw, color: Colors.blue,)),
  TabItem(title: 'text', icon: Icon(Icons.text_fields, color: Colors.blue,)),
];

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarExampleState createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample>
    with TickerProviderStateMixin {
  TabController? _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabBar.length, vsync: this);
    _tabController!.addListener(() {
      print('Listener: ${_tabController!.index}');
      setState(() {
        _currentTabIndex = _tabController!.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            child: SingleChildScrollViewExample(),
          ),
          Container(
            child: SliverAppBarExample(),
          ),
          Container(
            color: Colors.yellow,
            child: LayoutBuilderExample(),
          ),
          Container(
            color: Colors.yellow,
            child: TextFieldExample(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _tabController?.index = index;
            _currentTabIndex = index;
          }
          );
        },
        currentIndex: _currentTabIndex,
        items: [
          for (final item in _tabBar)
            BottomNavigationBarItem(
              label: item.title,
              icon: item.icon,
            ),
        ],
      ),
    );
  }
}
