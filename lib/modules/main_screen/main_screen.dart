import 'package:flutter/material.dart';
import 'package:test_app_actonica/modules/main_screen/widgets/card_widget.dart';
import 'bloc/main_screen_bloc.dart';
import 'bloc/main_screen_state.dart';
import 'models/all_products_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  List<AllProductsModel> _listProducts = [];
  late TabController _tabController;
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Пицца'),
    Tab(text: 'Бургеры'),
    Tab(text: 'Закуски'),
    Tab(text: 'Десерты'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final _state = context.watch<MainScreenBloc>().state;
    (_state is LoadedDataProductsState)
        ? _listProducts = _state.listProducts
        : _listProducts;

    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: _state is LoadedDataProductsState
          ? TabBarView(
              controller: _tabController,
              children: [
                CardWidget(
                  listDetailInfo: _listProducts[0].info,
                ),
                CardWidget(
                  listDetailInfo: _listProducts[1].info,
                ),
                CardWidget(
                  listDetailInfo: _listProducts[2].info,
                ),
                CardWidget(
                  listDetailInfo: _listProducts[3].info,
                ),
              ],
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
