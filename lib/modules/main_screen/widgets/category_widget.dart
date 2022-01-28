// import 'package:flutter/material.dart';
// import 'package:test_app_actonica/modules/main_screen/models/all_products_model.dart';
// import 'card_widget.dart';
//
// class CategoryWidget extends StatefulWidget {
//   final AllProductsModel listProducts;
//   const CategoryWidget({Key? key, required this.listProducts})
//       : super(key: key);
//
//   @override
//   _CategoryWidgetState createState() => _CategoryWidgetState();
// }
//
// class _CategoryWidgetState extends State<CategoryWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100.0,
//       width: 100.0,
//       child: ListView.builder(
//         itemCount: widget.listProducts.info.length,
//         itemBuilder: (context, index) {
//           return CardWidget(
//             listDetailInfo: widget.listProducts.info,
//           );
//         },
//       ),
//     );
//   }
// }
