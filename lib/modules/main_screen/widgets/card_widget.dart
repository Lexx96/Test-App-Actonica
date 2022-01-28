import 'package:flutter/material.dart';
import 'package:test_app_actonica/modules/detail_screen/detail_screen.dart';
import 'package:test_app_actonica/modules/main_screen/models/detail_info.dart';
import 'image_widget.dart';

class CardWidget extends StatelessWidget {
  final List<DetailInfoModel> listDetailInfo;

  const CardWidget({Key? key, required this.listDetailInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _sizeScreen = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: listDetailInfo.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DetailScreen(
                    infoProduct: listDetailInfo[index],
                  ),
                ),
              ),
              child: SizedBox(
                height: _sizeScreen.height * 0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageWidget(
                      sizeImage: _sizeScreen.height * 0.15,
                      imagePath: listDetailInfo[index].image,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                listDetailInfo[index].title,
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                listDetailInfo[index].description,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '${listDetailInfo[index].price} ₽',
                                    style: const TextStyle(
                                        fontSize: 20.0,
                                        color: Color.fromRGBO(255, 170, 6, 1)),
                                  ),
                                ],
                              ),
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
        },
      ),
    );
  }
}
