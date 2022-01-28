import 'package:flutter/material.dart';
import 'package:test_app_actonica/modules/main_screen/widgets/card_widget.dart';
import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';
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

  @override
  Widget build(BuildContext context) {
    final _state = context.watch<MainScreenBloc>().state;
    (_state is LoadedDataProductsState)
        ? _listProducts = _state.listProducts
        : _listProducts;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Меню'),
      ),
      body: _state is LoadedDataProductsState
          ? ScrollableListTabView(
              tabHeight: 48,
              tabs: listWidgets(),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  List<ScrollableListTab> listWidgets() {
    return _listProducts.map(
      (allProductsModel) {
        return ScrollableListTab(
          tab: ListTab(
            borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(10), right: Radius.circular(10)),
            borderColor: Colors.yellow,
            activeBackgroundColor: Colors.white,
            inactiveBackgroundColor: Colors.white,
            label: Tab(
              child: Text(
                allProductsModel.product,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
          body: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: allProductsModel.info.length,
            itemBuilder: (_, index) => CardWidget(
              detailInfo: allProductsModel.info[index],
            ),
          ),
        );
      },
    ).toList();
  }
}
