import 'package:flutter/material.dart';
import 'package:test_app_actonica/generated/l10n.dart';
import 'package:test_app_actonica/modules/main_screen/widgets/card_widget.dart';
import 'package:test_app_actonica/modules/main_screen/widgets/scroll_widget/scrollable_list_tab.dart';
import 'package:test_app_actonica/modules/main_screen/widgets/show_dialog_widget.dart';
import 'package:test_app_actonica/utils/themes/my_light_theme.dart';
import 'bloc/main_screen_bloc.dart';
import 'bloc/main_screen_event.dart';
import 'bloc/main_screen_state.dart';
import 'models/all_categories_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/scroll_widget/scrollable_list_tabview.dart';

/// Главный экран приложения
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  List<AllCategoriesModel> _listProducts = [];

  @override
  Widget build(BuildContext context) {
    final _state = context.watch<MainScreenBloc>().state;

    if (_state is LoadedDataProductsState) {
      _listProducts = _state.listProducts;
    }

    if (_state is SocketExceptionState) {
      Future.delayed(Duration.zero).whenComplete(
        () => _showMessage(
          title: S.of(context).titleMessage,
          description: S.of(context).socketErrorDescription,
        ),
      );
    }

    if (_state is OtherErrorState) {
      Future.delayed(Duration.zero).whenComplete(
        () => _showMessage(
          title: S.of(context).titleMessage,
          description: S.of(context).otherErrorDescription,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).menu,
        ),
      ),
      body: _state is LoadedDataProductsState
          ? ScrollableListTabView(
              tabHeight: 48,
              tabs: _listWidgets(),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  /// Возвращает виджеты в хедер экрана
  List<ScrollableListTab> _listWidgets() {
    return _listProducts.map(
      (allProductsModel) {
        return ScrollableListTab(
          tab: ListTab(
            inactiveChildColor: ColorsLightTheme.descriptionCardColor,
            activeBackgroundColor: ColorsLightTheme.headerColor,
            label: Text(
              allProductsModel.category,
              style: const TextStyle(fontSize: 16.0, fontFamily: 'Gabriela'),
            ),
          ),
          body: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: allProductsModel.products.length,
            itemBuilder: (_, index) => CardWidget(
              detailInfoModel: allProductsModel.products[index],
            ),
          ),
        );
      },
    ).toList();
  }

  /// Вывод оповещения для пользователя на экран
  /// принимает заголовок String [title],
  /// описание String [description]
  void _showMessage({
    required String title,
    required String description,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return ShowDialogWidget(
          title: title,
          description: description,
          textLeftButton: S.of(context).repeat,
          onTabLeftButton: () {
            Navigator.of(context).pop();
            context.read<MainScreenBloc>().add(LoadingDataEvent());
          },
          textRightButton: S.of(context).cancel,
          onTabRightButton: () => Navigator.of(context).pop(),
        );
      },
    );
  }
}
