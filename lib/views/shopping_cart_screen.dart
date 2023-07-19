//
//
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../controller/shopping_cart_controller.dart';
//
// class ShoppingCartScreen extends StatelessWidget {
//   final shoppingCartController = Get.put(ShoppingCartController());
//
//   ShoppingCartScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       backgroundColor: Colors.teal,
//       // appBar: AppBar(
//       //   title: Text('Shopping Cart'),
//       //   centerTitle: true,
//       // ),
//       body: Column(
//         children: [
//           Expanded(
//             child: GetX<ShoppingCartController>(
//               builder: (controller) {
//
//                 return ListView.builder(
//                   itemCount: controller.products?.length ?? 0, // Null check operator used here
//                   itemBuilder: (context, index) {
//                     return Card(
//                       color: Colors.white,
//                       child: Column(
//                         children: [
//                           ListTile(
//                             title: Text(
//                               "${controller.products[index].productName}",
//                               style: TextStyle(
//                                 fontSize: 24,
//                                 color: Colors.red,
//                                 fontWeight: FontWeight.w800,
//                               ),
//                             ),
//                             subtitle: Text(
//                                controller.products[index].productDescription,
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             trailing: Text(
//                               'Price : ${controller.products[index].productPrice}',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.blue,
//                                 fontWeight: FontWeight.w800,
//                               ),
//                             ),
//                           ),
//                           ElevatedButton(
//                             onPressed: () {},
//                             child: Text('Add To Cart',style: TextStyle(color: Colors.white),),
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.black,
//                             ),
//                           )
//                         ],
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//           Text(
//             'Total amount: ',
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w600,
//               color: Colors.black,
//             ),
//           ),
//           SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }
