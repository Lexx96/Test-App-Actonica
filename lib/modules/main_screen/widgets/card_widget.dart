import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Map listProducts;
  const CardWidget({Key? key, required this.listProducts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listProducts.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            SizedBox(
              height: 100.0,
              width: 100.0,
              child: Image.network(listProducts['image']),
            ),
            Column(
              children: [],
            )
          ],
        );
      },
    );
  }
}
