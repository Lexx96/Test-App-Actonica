import 'package:flutter/material.dart';
import 'package:test_app_actonica/modules/main_screen/models/detail_info.dart';

class CardWidget extends StatelessWidget {
  final List<DetailInfoModel> listDetailInfo;
  const CardWidget({Key? key, required this.listDetailInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      width: 100.0,
      child: ListView.builder(
        itemCount: listDetailInfo.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 100.0,
                width: 100.0,
                child: Image.network(listDetailInfo[index].image),
              ),
              Column(
                children: [
                  Text(listDetailInfo[index].title),
                  Text(listDetailInfo[index].description),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
