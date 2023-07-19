
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_demo_project/models/new_product_model.dart';

import '../../controller/cart_controller.dart';

// class ProductCartScreen extends StatelessWidget {
//   ProductCartScreen({Key? key,required this.newProductModel}) : super(key: key);
//   NewProductModel newProductModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black54.withOpacity(0.3),
//       appBar: AppBar(
//         title: Text(newProductModel!.productName,style: TextStyle(color: Colors.white),),
//         backgroundColor: Colors.black54.withOpacity(0.3),
//         centerTitle: true,),
//
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: GridView.builder(
//               gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//                   maxCrossAxisExtent: 200,
//                   childAspectRatio: 3 / 3,
//                   crossAxisSpacing: 20,
//                   mainAxisSpacing: 20),
//               itemCount: 3,
//               itemBuilder: (context,index){
//                 return Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.7),
//                       borderRadius: BorderRadius.all(Radius.circular(10))
//                   ),
//                   child: Column(
//                     children: [
//                       Expanded(
//                         child: Stack(
//                           children: [
//                             Image.network(newProductModel.categoryList[index].categoryImage,fit: BoxFit.cover,width: double.infinity,),
//                             //Image.network(newProductModelList[index].productImage,fit: BoxFit.cover,width: double.infinity,),
//                             Positioned(
//                                 top: 2,
//                                 right: 0,
//                                 child: Container(
//                                   height: 30,
//                                   width: 70,
//                                  color: Colors.yellow,
//                                   child: Center(child: Text(newProductModel.categoryList[index].categoryProductPrice.toString())),
//                             ),
//
//
//
//                             ),
//
//
//                             // cart count
//                             OverflowBox(
//                               minWidth: 0.0,
//                               minHeight: 0.0,
//                               child: Positioned(
//                                 bottom: 2,
//                                 left: 10,
//                                 right: 10,
//                                 child: Container(
//                                   height: 30,
//                                   color: Colors.transparent,
//                                   child: Padding(
//                                     padding: EdgeInsets.only(left: 15.0, right: 50),
//                                     child: Row(
//                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         // Decrement
//                                         Container(
//                                           height: 25,
//                                           width: 30,
//                                           color: Colors.white,
//                                           child: Center(
//                                             child: GestureDetector(
//                                               onTap: () {},
//                                               child: Icon(Icons.minimize, color: Colors.black, size: 14),
//                                             ),
//                                           ),
//                                         ),
//                                         // Text
//                                         Container(
//                                           height: 25,
//                                           width: 30,
//                                           color: Colors.white,
//                                           child: Center(
//                                             child: Text('1', style: TextStyle(color: Colors.black)),
//                                           ),
//                                         ),
//                                         // Increment
//                                         Container(
//                                           height: 25,
//                                           width: 30,
//                                           color: Colors.white,
//                                           child: Center(
//                                             child: GestureDetector(
//                                               onTap: () {},
//                                               child: Icon(Icons.add_circle, color: Colors.black, size: 14),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//
//
//
//
//
//
//                           ],
//                         ),
//                       ),
//                       Container(
//                           color: Colors.blue,
//                           height: 30,
//                           width: double.infinity,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(newProductModel.categoryList[index].categoryProductName),
//                               IconButton(onPressed: (){
//
//
//                               }, icon: Icon(Icons.add_shopping_cart,color: Colors.white,size: 18,))
//                             ],
//                           )
//                           // Align(
//                           //     child: Text(newProductModelList[index].productName))
//                       )
//                     ],
//                   ),
//                 );
//               }),
//         )
//
//     );
//   }
// }


class ProductCartController extends GetxController {
  List<RxBool> showOverflowBoxList = [];

  void toggleOverflowBox(int index) {
    showOverflowBoxList[index].toggle();
  }
}


class ProductCartItemController extends GetxController {
  RxInt quantity = RxInt(0);

  void incrementQuantity() {
    quantity.value++;
  }

  void decrementQuantity() {
    if (quantity.value > 0) {
      quantity.value--;
    }
  }
}

class ProductCartScreen extends StatelessWidget {
  final ProductCartController controller = Get.put(ProductCartController());
  final NewProductModel newProductModel;

  ProductCartScreen({Key? key, required this.newProductModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initialize the list of RxBool
    controller.showOverflowBoxList = List.generate(newProductModel.categoryList.length, (_) => false.obs);

    return Scaffold(
      backgroundColor: Colors.black54.withOpacity(0.3),
      appBar: AppBar(
        title: Text(
          newProductModel.productName,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black54.withOpacity(0.3),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: newProductModel.categoryList.length,
          itemBuilder: (context, index) {
            ProductCartItemController itemController;
            try {
              itemController = Get.find<ProductCartItemController>(tag: index.toString());
            } catch (e) {
              itemController = Get.put<ProductCartItemController>(ProductCartItemController(), tag: index.toString());
            }

            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Image.network(
                          newProductModel.categoryList[index].categoryImage,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                        Positioned(
                          top: 2,
                          right: 0,
                          child: Container(
                            height: 30,
                            width: 70,
                            color: Colors.yellow,
                            child: Center(
                              child: Text(
                                newProductModel.categoryList[index].categoryProductPrice.toString(),
                              ),
                            ),
                          ),
                        ),
                        Obx(() {
                          return Visibility(
                            visible: controller.showOverflowBoxList[index].value,
                            child: OverflowBox(
                              minWidth: 0.0,
                              minHeight: 0.0,
                              child: Positioned(
                                bottom: 2,
                                left: 10,
                                right: 10,
                                child: Container(
                                  height: 30,
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 15.0, right: 50),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 30,
                                          color: Colors.white,
                                          child: Center(
                                            child: GestureDetector(
                                              onTap: () {
                                                itemController.decrementQuantity();
                                              },
                                              child: Icon(Icons.minimize, color: Colors.black, size: 14),
                                            ),
                                          ),
                                        ),
                                        Obx(() {
                                          return Container(
                                            height: 25,
                                            width: 30,
                                            color: Colors.white,
                                            child: Center(
                                              child: Text(
                                                itemController.quantity.value.toString(),
                                                style: TextStyle(color: Colors.black),
                                              ),
                                            ),
                                          );
                                        }),
                                        Container(
                                          height: 25,
                                          width: 30,
                                          color: Colors.white,
                                          child: Center(
                                            child: GestureDetector(
                                              onTap: () {
                                                itemController.incrementQuantity();
                                              },
                                              child: Icon(Icons.add_circle, color: Colors.black, size: 14),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 30,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(newProductModel.categoryList[index].categoryProductName),
                        IconButton(
                          onPressed: () {
                            controller.toggleOverflowBox(index);
                          },
                          icon: Icon(Icons.add_shopping_cart, color: Colors.white, size: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}









