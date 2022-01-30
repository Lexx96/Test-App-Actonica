import 'package:flutter/material.dart';
import 'package:test_app_actonica/generated/l10n.dart';
import 'package:test_app_actonica/modules/main_screen/models/detail_info.dart';
import 'package:test_app_actonica/modules/main_screen/widgets/image_widget.dart';
import 'package:test_app_actonica/utils/themes/my_light_theme.dart';

/// Экран вывода детальной информации о товаре
/// принимает экземпляр класса DetailInfoModel [detailInfoModel]
class DetailScreen extends StatelessWidget {
  final DetailInfoModel detailInfoModel;

  const DetailScreen({
    Key? key,
    required this.detailInfoModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _orientation = MediaQuery.of(context).orientation;
    final _sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).back,
          style: const TextStyle(color: ColorsLightTheme.textColor),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: ImageWidget(
                    sizeImage: _sizeScreen.width,
                    imagePath: detailInfoModel.image,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        detailInfoModel.title,
                        style: const TextStyle(
                          fontSize: 24.0,
                          color: ColorsLightTheme.textColor,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        detailInfoModel.description,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: _orientation == Orientation.portrait
            ? _sizeScreen.height * 0.07
            : _sizeScreen.height * 0.15,
        decoration: const BoxDecoration(
          color: ColorsLightTheme.navigationBarBackgroundColor,
          border: Border(
            top: BorderSide(
              width: 1.0,
              color: Colors.grey,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text(
                    '${detailInfoModel.price}.10 ₽',
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '${detailInfoModel.price}.99 ₽',
                    style: const TextStyle(
                      fontSize: 21.0,
                      color: Color.fromRGBO(255, 170, 6, 1),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
