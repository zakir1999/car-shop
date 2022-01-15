import 'dart:collection';
// import 'dart:ffi';
// import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:shop_app/models/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _productList = [
    Product(
        productId: '001',
        name: 'Vintage TV',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://media.istockphoto.com/photos/vintage-television-picture-id96203609',
        productDetails: 'Old Television'),
    Product(
        productId: '002',
        name: 'Vintage TV 02',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://media.istockphoto.com/photos/vintage-television-picture-id1140991929',
        productDetails: 'Old Television'),
    Product(
        productId: '003',
        name: 'Sony TV',
        price: 450.0,
        discount: 30.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Sony',
        warrenty: '5 years',
        imageUrl:
            'https://media.istockphoto.com/photos/room-modern-minimalist-living-room-with-flat-tv-picture-id1281896445',
        productDetails: 'Smart Television'),
    Product(
        productId: '004',
        name: 'Sony TV 2',
        price: 450.0,
        discount: 30.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Sony',
        warrenty: '5 years',
        imageUrl:
            'https://media.istockphoto.com/photos/on-the-white-wall-in-living-room-with-armchairminimal-design-picture-id1279726732',
        productDetails: 'Smart Television'),
    Product(
        productId: '005',
        name: 'Sony TV 32',
        price: 450.0,
        discount: 30.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Sony',
        warrenty: '5 years',
        imageUrl:
            'https://media.istockphoto.com/photos/mockup-a-tv-wall-mounted-on-cabinet-in-a-living-room-room-with-a-picture-id1320870076',
        productDetails: 'Non Smart Television'),
    Product(
        productId: '006',
        name: 'Vision TV 32',
        price: 350.0,
        discount: 30.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Vision',
        warrenty: '5 years',
        imageUrl:
            'https://media.istockphoto.com/photos/smart-tv-mockup-on-zen-living-room-with-decoraion-minimal-style-3d-picture-id1162698554',
        productDetails: 'Non Smart Television'),
    Product(
        productId: '007',
        name: 'Smart TV Box',
        price: 100.0,
        discount: 10.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://media.istockphoto.com/photos/modern-tv-on-living-room-picture-id1328642672',
        productDetails: 'TV Box'),
    Product(
        productId: '008',
        name: 'Vision Refrigerator',
        price: 650.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Vision',
        warrenty: '2 years',
        imageUrl:
            'https://media.istockphoto.com/photos/vintage-television-picture-id96203609',
        productDetails: 'Refrigerator'),
    Product(
        productId: '009',
        name: 'Glass Refrigerator',
        price: 550.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Vision',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1584568694244-14fbdf83bd30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=726&q=80',
        productDetails: 'Refrigerator'),
    Product(
        productId: '010',
        name: 'Kitchen Sets',
        price: 650.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Vision',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1588854337048-44569c79c614?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        productDetails: 'Refrigerator and others'),
    Product(
        productId: '011',
        name: 'Refrigerator',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1536353284924-9220c464e262?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
        productDetails: 'Old Refrigerator'),
    Product(
        productId: '012',
        name: 'Refrigerator',
        price: 350.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1585338667391-5b279a0c5eb8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        productDetails: 'Old Refrigerator'),
    Product(
        productId: '013',
        name: 'DJI Mavic',
        price: 850.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'robots',
        brandName: 'DJI',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1524143986875-3b098d78b363?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        productDetails: 'Heavy Drone'),
    Product(
        productId: '014',
        name: 'DJI Mavic Mini',
        price: 550.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'robots',
        brandName: 'DJI',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1528158477878-c8036dc3c31a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=855&q=80',
        productDetails: 'Drone'),
    Product(
        productId: '015',
        name: 'DJI Mavic MINI2',
        price: 350.0,
        discount: 20.0,
        categoryName: 'electronics',
        subCategoryName: 'robots',
        brandName: 'DJI',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1528159190360-70d4f914fee1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        productDetails: 'Drone'),
    Product(
        productId: '016',
        name: 'DJI Mavic 2',
        price: 450.0,
        discount: 20.0,
        categoryName: 'electronics',
        subCategoryName: 'robots',
        brandName: 'DJI',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1514043454212-14c181f46583?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80',
        productDetails: 'Drone'),
    Product(
        productId: '017',
        name: 'DJI Mavic 3',
        price: 450.0,
        discount: 20.0,
        categoryName: 'electronics',
        subCategoryName: 'robots',
        brandName: 'DJI',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1514043133987-e4801c95b2c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=955&q=80',
        productDetails: 'Drone'),
    Product(
        productId: '018',
        name: 'Small Freezer',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1571175443880-49e1d25b2bc5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        productDetails: 'Old Freezer'),
    Product(
        productId: '019',
        name: 'Oven and Coffee Maker Combo',
        price: 200.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1586208958839-06c17cacdf08?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=965&q=80',
        productDetails: 'Kitchen Item'),
    Product(
        productId: '020',
        name: 'Oven',
        price: 200.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://media.istockphoto.com/photos/modern-microwave-oven-picture-id139406154',
        productDetails: 'Kitchen Item'),
    Product(
        productId: '021',
        name: 'Vintage TV',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://media.istockphoto.com/photos/vintage-television-picture-id96203609',
        productDetails: 'Old Television'),
    Product(
        productId: '022',
        name: 'Smart Oven',
        price: 300.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://media.istockphoto.com/photos/microwave-isolated-on-white-background-picture-id1198611365',
        productDetails: 'Kitchen Item'),
    Product(
        productId: '023',
        name: 'Microwave Oven',
        price: 350.0,
        discount: 30.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1574269909862-7e1d70bb8078?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80',
        productDetails: 'Kitchen Item'),
    Product(
        productId: '024',
        name: 'Washing Machine',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1604335399105-a0c585fd81a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        productDetails: 'Best Washing Machine'),
    Product(
        productId: '025',
        name: 'Washing Machine 2',
        price: 150.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1604335398557-3f39109c7b4c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        productDetails: 'Washing Machine'),
    Product(
        productId: '026',
        name: 'Washing Machine Mini',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1626806787461-102c1bfaaea1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
        productDetails: 'Best Washing Machine'),
    Product(
        productId: '027',
        name: 'Washing Machine Mini2',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1626806819282-2c1dc01a5e0c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        productDetails: 'Best Washing Machine'),
    Product(
        productId: '028',
        name: 'Washing Machine Mini3',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1622473590925-e3616c0a41bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=692&q=80',
        productDetails: 'Best Washing Machine'),
    Product(
        productId: '029',
        name: 'Wood Choper',
        price: 150.0,
        discount: 20.0,
        categoryName: 'electronics',
        subCategoryName: 'robots',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1505798577917-a65157d3320a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
        productDetails: 'Best Choper'),
    Product(
        productId: '030',
        name: 'Drill Mechine',
        price: 120.0,
        discount: 20.0,
        categoryName: 'electronics',
        subCategoryName: 'robots',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1518709414768-a88981a4515d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
        productDetails: 'Best Drill Mechine'),
    Product(
        productId: '031',
        name: 'Washing Machine',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1604335399105-a0c585fd81a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        productDetails: 'Best Washing Machine'),
  ];
  int _crossAxisCount = 2;
  double _expandedHeight = 280;
  double _imageHeight = 160;
  int get crossAxisCounts => _crossAxisCount;
  double get expandedHeight => _expandedHeight;
  double get imageHeight => _imageHeight;
  set setAxis(int data) {
    _crossAxisCount = data;
    notifyListeners();
  }

  set setexpandedHeight(double data) {
    _expandedHeight = data;
    notifyListeners();
  }

  set setImageHeight(double data) {
    _imageHeight = data;
    notifyListeners();
  }

  String? _searchString;
  set setSearchString(String data) {
    _searchString = data;
    notifyListeners();
  }

  get getsearchString => _searchString;
  dynamic _provider;

  set providerData(dynamic data) {
    _provider = data;
  }

  get provider => _provider;
  UnmodifiableListView<Product> get products => _searchString == null
      ? UnmodifiableListView(_productList)
      : UnmodifiableListView(_productList.where(
          (element) =>
              element.name
                  .toLowerCase()
                  .contains(_searchString!.toLowerCase().toString()) ||
              element.brandName
                  .toLowerCase()
                  .contains(_searchString!.toLowerCase().toString()) ||
              element.price
                  .toString()
                  .contains(_searchString!.toLowerCase().toString()) ||
              element.discount
                  .toString()
                  .contains(_searchString!.toLowerCase().toString()),
        ));
}
