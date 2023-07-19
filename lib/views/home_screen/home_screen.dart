


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_demo_project/models/new_product_model.dart';

import '../product_cart_screen/cart_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54.withOpacity(0.3),
      appBar: AppBar(
        backgroundColor: Colors.black54.withOpacity(0.3),
        title: Text('Home Screen',style: TextStyle(color: Colors.white),),centerTitle: true,),

       body: Padding(
         padding: const EdgeInsets.all(16.0),
         child: GridView.builder(
             gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                 maxCrossAxisExtent: 200,
                 childAspectRatio: 3 / 3,
                 crossAxisSpacing: 20,
                 mainAxisSpacing: 20),
             itemCount: 3,
             itemBuilder: (context,index){
               return GestureDetector(
                 onTap: (){
                   Get.to(ProductCartScreen(newProductModel: newProductModelList[index]));

                   //Get.to(ProductCartScreen(newProductModel: ,));
                 },
                 child: Container(
                   width: double.infinity,
                   decoration: BoxDecoration(
                     color: Colors.white.withOpacity(0.7),
                         borderRadius: BorderRadius.all(Radius.circular(10))
                   ),
                   child: Column(
                     children: [
                       Expanded(child: Image.network(newProductModelList[index].productImage,fit: BoxFit.cover,)),
                       Container(
                           color: Colors.blue,
                           height: 30,
                           width: double.infinity,
                           child: Align(
                               child: Text(newProductModelList[index].productName)))
                     ],
                   ),
                 ),
               );
             }),
       )







    );
  }
}
