

// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:get/state_manager.dart';
// import 'package:getx_demo_project/models/product_model.dart';
//
// class CartController extends GetxController{
//
//   var cartItem = <ProductModel>[].obs;
//
//
//   addToCart(ProductModel productModel){
//
//     cartItem.add(productModel);
//   }
//
//
//
//
//
//
//
//
// }


import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/new_product_model.dart';
import '../models/product_model.dart';

class CartController extends GetxController {
  RxList<NewProductModel> cartItems = <NewProductModel>[].obs;

  void addToCart(NewProductModel product) {
    cartItems.add(product);
  }
}

