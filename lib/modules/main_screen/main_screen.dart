import 'package:flutter/material.dart';
import 'package:test_app_actonica/modules/main_screen/widgets/card_widget.dart';
import 'package:test_app_actonica/modules/main_screen/widgets/category_widget.dart';
import 'bloc/main_screen_bloc.dart';
import 'bloc/main_screen_state.dart';
import 'models/all_products_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late MainScreenBloc _bloc;
  List<AllProductsModel> _listProducts = [];

  // late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _bloc = MainScreenBloc();
    if (_listProducts.isEmpty) _bloc.loadDataProducts();
    // _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _bloc.mainScreenStreamController,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.data is LoadedDataProducts) {
          final _data = snapshot.data as LoadedDataProducts;
          _listProducts = _data.allProducts;
        }
        return snapshot.data is LoadedDataProducts && _listProducts != []
            ? DefaultTabController(
                length: _listProducts.length,
                child: Scaffold(
                  appBar: AppBar(
                    bottom: TabBar(
                      isScrollable: true,
                      // controller: _tabController,
                      tabs: [
                        Tab(
                          text: 'Пицца',
                        ),
                        Tab(
                          text: 'Бургеры',
                        ),
                        Tab(
                          text: 'Закуски',
                        ),
                        Tab(
                          text: 'Десерты',
                        ),
                      ],
                    ),
                  ),
                  body: TabBarView(
                    // controller: _tabController,
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
                  ),
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    // _tabController.dispose();
    _bloc.dispose();
  }
}
