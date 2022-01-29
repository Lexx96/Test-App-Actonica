import 'package:flutter/material.dart';
import 'package:test_app_actonica/modules/main_screen/widgets/card_widget.dart';
import 'package:test_app_actonica/modules/main_screen/widgets/scroll_widget/scrollable_list_tab.dart';
import 'bloc/main_screen_bloc.dart';
import 'bloc/main_screen_state.dart';
import 'models/all_products_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/scroll_widget/scrollable_list_tabviev.dart';

/// Главный экран приложения
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
            inactiveChildColor: Colors.grey,
            activeBackgroundColor: Colors.yellow,
            label: Text(
              allProductsModel.product,
              style: const TextStyle(fontSize: 14.0),
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
