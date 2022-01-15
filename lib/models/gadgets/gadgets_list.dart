import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:shop_app/models/gadgets/gadgets.dart';
import 'package:shop_app/models/product.dart';

class GadgetsProvider with ChangeNotifier {
  String? _searchString;
  set setSearchString(String data) {
    _searchString = data;
    notifyListeners();
  }

  UnmodifiableListView<Gadgets> get products => _searchString == null
      ? UnmodifiableListView(_productList)
      : UnmodifiableListView(_productList.where(
          (element) =>
              element.name
                  .toLowerCase()
                  .contains(_searchString!.toLowerCase().toString()) ||
              element.price
                  .toString()
                  .contains(_searchString!.toLowerCase().toString()) ||
              element.brandName
                  .toString()
                  .contains(_searchString!.toLowerCase().toString()),
        ));
  final List<Gadgets> _productList = [
    Gadgets(
        productId: '001',
        name: 'AirPods Max',
        price: 550.0,
        discount: 50.0,
        categoryName: 'gadgets',
        subCategoryName: 'audio device',
        brandName: 'Apple',
        warrenty: '3 years',
        imageUrl:
            'https://images.unsplash.com/photo-1613040809024-b4ef7ba99bc3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        productDetails: 'Best Sounding Headsets'),
    Gadgets(
        productId: '002',
        name: 'JBL Beats',
        price: 250.0,
        discount: 30.0,
        categoryName: 'gadgets',
        subCategoryName: 'audio device',
        brandName: 'JBL',
        warrenty: '2 Years',
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        productDetails: 'Best Sounding Headsets'),
    Gadgets(
        productId: '003',
        name: 'JBL 2',
        price: 250.0,
        discount: 0.0,
        categoryName: 'gadgets',
        subCategoryName: 'audio device',
        brandName: 'Beats',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1491927570842-0261e477d937?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        productDetails: 'Best Sounding Headsets'),
    Gadgets(
        productId: '004',
        name: 'AirPods Pro',
        price: 250.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'audio device',
        brandName: 'Apple',
        warrenty: '3 years',
        imageUrl:
            'https://images.unsplash.com/photo-1606741965326-cb990ae01bb2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        productDetails: 'Best Sounding Earphones'),
    Gadgets(
        productId: '005',
        name: 'AirPods',
        price: 100.0,
        discount: 0.0,
        categoryName: 'gadgets',
        subCategoryName: 'audio device',
        brandName: 'Apple',
        warrenty: '3 years',
        imageUrl:
            'https://images.unsplash.com/photo-1585155784229-aff921ccfa10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80',
        productDetails: 'Best Sounding Earphones'),
    Gadgets(
        productId: '006',
        name: 'AirPods with Case',
        price: 100.0,
        discount: 0.0,
        categoryName: 'gadgets',
        subCategoryName: 'audio device',
        brandName: 'Apple',
        warrenty: '3 years',
        imageUrl:
            'https://images.unsplash.com/photo-1570185014104-901f21c07621?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        productDetails: 'Best Sounding Earphones'),
    Gadgets(
        productId: '007',
        name: 'AirPods 2',
        price: 150.0,
        discount: 0.0,
        categoryName: 'gadgets',
        subCategoryName: 'audio device',
        brandName: 'Apple',
        warrenty: '3 years',
        imageUrl:
            'https://images.unsplash.com/photo-1535057929422-25260d3e1a54?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=973&q=80',
        productDetails: 'Best Sounding Earphones'),
    Gadgets(
        productId: '008',
        name: 'Smart Watch',
        price: 250.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'smart device',
        brandName: 'FitBit',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1099&q=80',
        productDetails: 'Cool Looking Watch'),
    Gadgets(
        productId: '009',
        name: 'Polaroid v2',
        price: 300.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'camera',
        brandName: 'Polaroid',
        warrenty: '1 years',
        imageUrl:
            'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        productDetails: 'Instant Photos'),
    Gadgets(
        productId: '010',
        name: 'Polaroid v1',
        price: 200.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'camera',
        brandName: 'Polaroid',
        warrenty: '1 years',
        imageUrl:
            'https://images.unsplash.com/photo-1499502986432-1ea72377dce0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
        productDetails: 'Instant Photos'),
    Gadgets(
        productId: '011',
        name: 'Amazon Echo',
        price: 250.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'smart device',
        brandName: 'Amazon',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1543512214-318c7553f230?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        productDetails: 'Smart Audio Device'),
    Gadgets(
        productId: '012',
        name: 'Phone Adapter',
        price: 20.0,
        discount: 0.0,
        categoryName: 'gadgets',
        subCategoryName: 'charger',
        brandName: 'Anker',
        warrenty: '1 years',
        imageUrl:
            'https://images.unsplash.com/photo-1600490722773-35753aea6332?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        productDetails: 'Fast Charger'),
    Gadgets(
        productId: '013',
        name: 'Anker Adapter Set',
        price: 120.0,
        discount: 0.0,
        categoryName: 'gadgets',
        subCategoryName: 'charger',
        brandName: 'Anker',
        warrenty: '1 years',
        imageUrl:
            'https://images.unsplash.com/photo-1596207891316-23851be3cc20?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
        productDetails: 'Fast Charger for every device'),
    Gadgets(
        productId: '014',
        name: 'Apple Watch Series 3',
        price: 300.0,
        discount: 0.0,
        categoryName: 'gadgets',
        subCategoryName: 'smart device',
        brandName: 'Apple',
        warrenty: '3 years',
        imageUrl:
            'https://images.unsplash.com/photo-1549482199-bc1ca6f58502?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
        productDetails: 'Sports Smart Watch'),
    Gadgets(
        productId: '015',
        name: 'Apple Watch SE',
        price: 320.0,
        discount: 0.0,
        categoryName: 'gadgets',
        subCategoryName: 'smart device',
        brandName: 'Apple',
        warrenty: '3 years',
        imageUrl:
            'https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
        productDetails: 'Sports Smart Watch'),
    Gadgets(
        productId: '016',
        name: 'Apple Watch Series 7',
        price: 500.0,
        discount: 0.0,
        categoryName: 'gadgets',
        subCategoryName: 'smart device',
        brandName: 'Apple',
        warrenty: '3 years',
        imageUrl:
            'https://images.unsplash.com/photo-1551816230-ef5deaed4a26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80',
        productDetails: 'Sports Smart Watch'),
    Gadgets(
        productId: '017',
        name: 'GoPro Hero 9',
        price: 550.0,
        discount: 50.0,
        categoryName: 'gadgets',
        subCategoryName: 'camera',
        brandName: 'GoPro',
        warrenty: '5 years',
        imageUrl:
            'https://images.unsplash.com/photo-1532877590696-69a157b92b78?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        productDetails: 'Best Action Camera'),
    Gadgets(
        productId: '018',
        name: 'Sony A7',
        price: 400.0,
        discount: 30.0,
        categoryName: 'gadgets',
        subCategoryName: 'camera',
        brandName: 'Sony',
        warrenty: '3 years',
        imageUrl:
            'https://images.unsplash.com/photo-1505739998589-00fc191ce01d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        productDetails: 'Best Camera'),
    Gadgets(
        productId: '019',
        name: 'JBL Go 2',
        price: 330.0,
        discount: 30.0,
        categoryName: 'gadgets',
        subCategoryName: 'audio device',
        brandName: 'JBL',
        warrenty: '3 years',
        imageUrl:
            'https://images.unsplash.com/photo-1552585140-bdeefd6b9d6a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80',
        productDetails: 'Best Sounding Headsets'),
    Gadgets(
        productId: '020',
        name: 'Fujifilm A1',
        price: 500.0,
        discount: 0.0,
        categoryName: 'gadgets',
        subCategoryName: 'camera',
        brandName: 'Fujifilm',
        warrenty: '3 years',
        imageUrl:
            'https://images.unsplash.com/photo-1608701033789-87fc1daea1c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        productDetails: 'Best Camera'),
    Gadgets(
        productId: '021',
        name: 'G Shock 1',
        price: 100.0,
        discount: 10.0,
        categoryName: 'gadgets',
        subCategoryName: 'smart device',
        brandName: 'GShock',
        warrenty: '8 years',
        imageUrl:
            'https://images.unsplash.com/photo-1599989850406-3c8de3edf0ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80',
        productDetails: 'Best Watch'),
    Gadgets(
        productId: '022',
        name: 'Ipad Pro 11',
        price: 800.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1542751110-97427bbecf20?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1084&q=80',
        productDetails: 'Best Tablet'),
    Gadgets(
        productId: '023',
        name: 'Ipad 9th Gen',
        price: 300.0,
        discount: 0.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1533310266094-8898a03807dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        productDetails: 'Best Tablet'),
    Gadgets(
        productId: '024',
        name: 'Ipad 8th Gen',
        price: 270.0,
        discount: 0.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1557825835-b4527f242af7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
        productDetails: 'Best Tablet'),
    Gadgets(
        productId: '025',
        name: 'iPhone 11 Pro ',
        price: 600.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1574763546929-db0ab5c5e4b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80',
        productDetails: 'Best Phone'),
    Gadgets(
        productId: '026',
        name: 'Amazon Echo Dot',
        price: 150.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'smart device',
        brandName: 'Amazon',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1568910748155-01ca989dbdd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        productDetails: 'Smart Audio Device'),
    Gadgets(
        productId: '027',
        name: 'Dell XPS',
        price: 1800.0,
        discount: 120.0,
        categoryName: 'gadgets',
        subCategoryName: 'PC and Mac',
        brandName: 'Dell',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1595303526913-c7037797ebe7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1229&q=80',
        productDetails: 'Best Laptop'),
    Gadgets(
        productId: '028',
        name: 'iMac',
        price: 1800.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'PC and Mac',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1547043848-d94c4ea5adc5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
        productDetails: 'Best All in on PC'),
    Gadgets(
        productId: '029',
        name: 'Dell XPS 13',
        price: 800.0,
        discount: 10.0,
        categoryName: 'gadgets',
        subCategoryName: 'PC and Mac',
        brandName: 'Dell',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1595087873528-1fe582a3b302?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
        productDetails: 'Best Laptop'),
    Gadgets(
        productId: '030',
        name: 'MacBook Pro',
        price: 1800.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'PC and Mac',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1595066349400-7ebe04391d26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        productDetails: 'Best Laptop'),
    Gadgets(
        productId: '031',
        name: 'HomePod Mini',
        price: 350.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'smart device',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1529359744902-86b2ab9edaea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        productDetails: 'Smart Audio Device'),
    Gadgets(
        productId: '032',
        name: 'Google Home',
        price: 350.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'smart device',
        brandName: 'Google',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1530546171585-cc042ea5d7ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=936&q=80',
        productDetails: 'Smart Audio Device'),
    Gadgets(
        productId: '033',
        name: 'iPhone 12 Pro max',
        price: 800.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1598061403733-a0d8eb6bd569?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        productDetails: 'Best Phone'),
    Gadgets(
        productId: '034',
        name: 'iPhone SE 2020',
        price: 400.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1606293459339-aa5d34a7b0e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80',
        productDetails: 'Best Phone'),
    Gadgets(
        productId: '035',
        name: 'iPhone 7',
        price: 400.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1604548530945-fbdce3e76bc4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80',
        productDetails: 'Best Phone'),
    Gadgets(
        productId: '036',
        name: 'Pixel 3',
        price: 500.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Google',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1588858865445-03381e156752?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
        productDetails: 'Best Phone'),
    Gadgets(
        productId: '037',
        name: 'Ipod',
        price: 300.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'audio device',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1511367734837-f2956f0d8020?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1105&q=80',
        productDetails: 'Best Walkman'),
    Gadgets(
        productId: '038',
        name: 'JBL 3',
        price: 250.0,
        discount: 0.0,
        categoryName: 'gadgets',
        subCategoryName: 'audio device',
        brandName: 'JBL',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        productDetails: 'Best Sounding Headsets'),
    Gadgets(
        productId: '022',
        name: 'Ipad Pro 11',
        price: 800.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1542751110-97427bbecf20?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1084&q=80',
        productDetails: 'Best Tablet'),
  ];
}
