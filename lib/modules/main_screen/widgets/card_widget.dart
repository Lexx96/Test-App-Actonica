import 'package:flutter/material.dart';
import 'package:test_app_actonica/modules/detail_screen/detail_screen.dart';
import 'package:test_app_actonica/modules/main_screen/models/detail_info.dart';
import 'package:test_app_actonica/utils/themes/my_light_theme.dart';
import 'image_widget.dart';

/// Виджет вывода товара в виде карточки в ленте товаров
/// принимает экземпляр класса DetailInfoModel [detailInfoModel]
class CardWidget extends StatelessWidget {
  final DetailInfoModel detailInfoModel;

  const CardWidget({Key? key, required this.detailInfoModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _sizeScreen = MediaQuery.of(context).size;
    final _orientation = MediaQuery.of(context).orientation;
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        bottom: 8.0,
        right: 8.0,
        left: 8.0,
      ),
      child: InkWell(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => DetailScreen(
              detailInfoModel: detailInfoModel,
            ),
          ),
        ),
        child: SizedBox(
          height: _orientation == Orientation.portrait
              ? _sizeScreen.height * 0.15
              : _sizeScreen.height * 0.41,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ImageWidget(
                sizeImage: _orientation == Orientation.portrait
                    ? _sizeScreen.height * 0.15
                    : _sizeScreen.height * 0.41,
                imagePath: detailInfoModel.image,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        detailInfoModel.title,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: ColorsLightTheme.textColor,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Expanded(
                        child: Text(
                          detailInfoModel.description,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '${detailInfoModel.price} ₽',
                            style: const TextStyle(
                              fontSize: 20.0,
                              color: ColorsLightTheme.priceColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
