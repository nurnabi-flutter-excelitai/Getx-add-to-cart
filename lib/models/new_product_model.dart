


class NewProductModel {
  final String productName;
  final String productImage;
  final List<CategoryProduct> categoryList;

  NewProductModel({
    required this.productName,
    required this.productImage,
    required this.categoryList,
  });
}



class CategoryProduct {
  final String categoryProductName;
  final String categoryProductDetails;
  final String categoryImage;
  final double categoryProductPrice;
  final int categoryProductQuantity;

  CategoryProduct({
    required this.categoryProductName,
    required this.categoryProductDetails,
    required this.categoryImage,
    required this.categoryProductPrice,
    required this.categoryProductQuantity,
  });
}


List<NewProductModel> newProductModelList = [

  // fan
  NewProductModel(
      productName: 'Fan',
      productImage: 'https://waltonbd.com/image/catalog/fan/ceiling-fan/tulip-ceiling-fan/indigo.jpg',
      categoryList: [
        CategoryProduct(
            categoryProductName: 'Celling Fan',
            categoryProductDetails: 'Fine Fan',
            categoryImage: 'https://waltonbd.com/image/catalog/fan/ceiling-fan/tulip-ceiling-fan/indigo.jpg',
            categoryProductPrice: 1600.0,
            categoryProductQuantity: 3),
        CategoryProduct(
            categoryProductName: 'Table Fan',
            categoryProductDetails: 'Fine Fan',
            categoryImage: 'https://img.etimg.com/thumb/msid-98828791,width-1600,height-1600,imgsize-47250,overlay-economictimes/photo.jpg',
            categoryProductPrice: 1600.0,
            categoryProductQuantity: 3),
        CategoryProduct(
            categoryProductName: 'Mini Table Fan',
            categoryProductDetails: 'Fine Fan',
            categoryImage: 'https://img.fruugo.com/product/7/04/622448047_max.jpg',
            categoryProductPrice: 1600.0,
            categoryProductQuantity: 3),

      ]),

  // watch
  NewProductModel(
      productName: 'Watch',
      productImage: 'https://cdn.anscommerce.com/catalog/brandstore/johnson/17_7_20/Sale.jpg',
      categoryList: [
        CategoryProduct(
            categoryProductName: 'Luxuary Watch',
            categoryProductDetails: 'Beautiful',
            categoryImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9SyIbwRsTfSm2oqv50za2osFQAievWrhOkxdxNxc&s',
            categoryProductPrice: 1600.0,
            categoryProductQuantity: 3),
        CategoryProduct(
            categoryProductName: 'Men Wrist Watch',
            categoryProductDetails: 'Fine Fan',
            categoryImage: 'https://static-01.daraz.com.bd/p/6b70980f8bfc09f2bff88bfab037117a.jpg',
            categoryProductPrice: 1600.0,
            categoryProductQuantity: 3),
        CategoryProduct(
            categoryProductName: 'Hc6c5d8a watch',
            categoryProductDetails: 'watch',
            categoryImage: 'https://s.alicdn.com/@sc04/kf/Hc6c5d8a51a744d189e0ae5e4951132a0I.jpg_300x300.jpg',
            categoryProductPrice: 1600.0,
            categoryProductQuantity: 3),

      ]),

  // dress
  NewProductModel(
      productName: 'Dress',
      productImage: 'https://britishretro.co.uk/wp-content/uploads/2019/10/red-1950s-style-dress.jpg',
      categoryList: [
        CategoryProduct(
            categoryProductName: 'Luxuary Watch',
            categoryProductDetails: 'Beautiful',
            categoryImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9SyIbwRsTfSm2oqv50za2osFQAievWrhOkxdxNxc&s',
            categoryProductPrice: 1600.0,
            categoryProductQuantity: 3),
        CategoryProduct(
            categoryProductName: 'Men Wrist Watch',
            categoryProductDetails: 'Beautiful',
            categoryImage: 'https://static-01.daraz.com.bd/p/6b70980f8bfc09f2bff88bfab037117a.jpg',
            categoryProductPrice: 1600.0,
            categoryProductQuantity: 3),
        CategoryProduct(
            categoryProductName: 'Hc6c5d8a watch',
            categoryProductDetails: 'Nice',
            categoryImage: 'https://s.alicdn.com/@sc04/kf/Hc6c5d8a51a744d189e0ae5e4951132a0I.jpg_300x300.jpg',
            categoryProductPrice: 1600.0,
            categoryProductQuantity: 3),

      ]),

];
