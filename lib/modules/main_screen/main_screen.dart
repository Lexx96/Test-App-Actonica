import 'package:flutter/material.dart';
import 'package:test_app_actonica/modules/main_screen/widgets/card_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Пицца'),
    Tab(text: 'Бургеры'),
    Tab(text: 'Закуски'),
    Tab(text: 'Десерты'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CardWidget(
            listProducts: {},
          ),
          CardWidget(
            listProducts: {},
          ),
          CardWidget(
            listProducts: {},
          ),
          CardWidget(
            listProducts: {},
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
