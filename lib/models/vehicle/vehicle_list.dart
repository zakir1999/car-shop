import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:shop_app/models/vehicle/vehicle.dart';

class VehicleProvider with ChangeNotifier {
  String? _searchString;
  set setSearchString(String data) {
    _searchString = data;
    notifyListeners();
  }

  UnmodifiableListView<Vehicle> get products => _searchString == null
      ? UnmodifiableListView(_vheicleList)
      : UnmodifiableListView(_vheicleList.where(
          (element) =>
              element.name
                  .toLowerCase()
                  .contains(_searchString!.toLowerCase().toString()) ||
              element.price
                  .toString()
                  .contains(_searchString!.toLowerCase().toString()) ||
              element.price
                  .toString()
                  .contains(_searchString!.toLowerCase().toString()),
        ));
  final List<Vehicle> _vheicleList = [
    Vehicle(
      productId: 'v001',
      name: 'Ferrari S.P.A',
      price: 29086,
      color: 'White',
      miles: '350',
      discount: 29,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Ferrari',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/generic-modern-suv-car-in-concrete-garage-picture-id1307086567?s=612x612',
    ),
    Vehicle(
      productId: 'v002',
      name: 'Audi A4',
      price: 34006,
      color: 'White',
      miles: '320',
      discount: 09,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Audi',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/audi-a4-front-picture-id1304100583',
    ),
    Vehicle(
      productId: 'v003',
      name: 'BMW Motorrad',
      price: 29456,
      color: 'white',
      miles: '320',
      discount: 39,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'BMW',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/series-2-picture-id1312468412',
    ),
    Vehicle(
      productId: 'v004',
      name: 'BMW 2015',
      price: 2905456,
      color: 'white',
      miles: '350',
      discount: 09,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'BMW',
      productDetails: 'New Car',
      imageUrl: 'https://media.istockphoto.com/photos/-picture-id825855156',
    ),
    Vehicle(
      productId: 'v005',
      name: 'Rolls Royce RB211',
      price: 290456,
      color: 'Red with Silver',
      miles: '350',
      discount: 20,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Rolls_Royce',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/rolls-royce-wraith-picture-id472123295',
    ),
    Vehicle(
      productId: 'v006',
      name: 'Lamborghini V12',
      price: 2956,
      color: 'green',
      miles: '310',
      discount: 20,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Lamborghini',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/lamborghini-huracan-picture-id535167341?s=612x612',
    ),
    Vehicle(
      productId: 'v007',
      name: 'Lamborghini V22',
      price: 29456,
      color: 'Black',
      miles: '300',
      discount: 23,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Lamborghini',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/lamborghini-murcielago-at-sunset-with-open-doors-picture-id171383046',
    ),
    Vehicle(
      productId: 'v009',
      name: 'Land Rover 20',
      price: 290875,
      color: 'grey',
      miles: '350',
      discount: 23,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Land Rover',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/land-rover-defender-90-station-wagon-picture-id535275077',
    ),
    Vehicle(
      productId: 'v010',
      name: 'Land Rover-34',
      price: 2956,
      color: 'Black',
      miles: '350',
      discount: 29,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Land Rover',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/front-view-of-black-range-rove-crossover-parked-in-the-street-picture-id1279865130',
    ),
    Vehicle(
      productId: 'v011',
      name: 'Land Rover-23',
      price: 2906,
      color: 'white',
      miles: '350',
      discount: 29,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Land Rover',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/land-rover-defender-against-the-alps-at-passo-dello-stelvio-close-to-picture-id1338635621',
    ),
    Vehicle(
      productId: 'v012',
      name: 'Hummer 23',
      price: 2906,
      color: 'Black',
      miles: '350',
      discount: 2,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Hummer',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/hummer-h2-2008-picture-id458630879',
    ),
    Vehicle(
      productId: 'v013',
      name: 'Hummer 21',
      price: 29906,
      color: 'Red',
      miles: '350',
      discount: 9,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Hummor',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/red-suv-parked-on-residential-driveway-picture-id458956867?s=612x612',
    ),
    Vehicle(
      productId: 'v014',
      name: 'Mitsubishi ver2',
      price: 2906,
      color: 'white',
      miles: '350',
      discount: 2,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Mitubishi',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/mitsubishi-lancer-evolution-picture-id480611581?s=612x612',
    ),
    Vehicle(
      productId: 'v015',
      name: 'Mitsubishi 245',
      price: 2906,
      color: 'Black',
      miles: '350',
      discount: 23,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Mitubishi',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/mitsubishi-outlander-suv-picture-id458604683',
    ),
    Vehicle(
      productId: 'v016',
      name: 'Audi -23v',
      price: 2956,
      color: 'Red',
      miles: '350',
      discount: 23,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Auddio',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/audi-a4-avant-luxury-estate-car-picture-id520494174',
    ),
    Vehicle(
      productId: 'v017',
      name: 'Audi v35',
      price: 2906,
      color: 'Yellow',
      miles: '350',
      discount: 29,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Audi',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/lamborghini-aventador-picture-id522310912?s=2048x2048',
    ),
    Vehicle(
      productId: 'v018',
      name: 'Audi 02',
      price: 25456,
      color: 'Black',
      miles: '350',
      discount: 2,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Audi',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/sports-car-picture-id147557453?s=612x612',
    ),
    Vehicle(
      productId: 'v019',
      name: 'Audi R8',
      price: 2956,
      color: 'White',
      miles: '350',
      discount: 2,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Audi',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/audi-r8-spyder-picture-id481131985',
    ),
    Vehicle(
      productId: 'v020',
      name: 'Audi r8',
      price: 2956,
      color: 'Black',
      miles: '350',
      discount: 23,
      categoryName: 'vheicles',
      subCategoryName: 'car',
      brandName: 'Audi',
      productDetails: 'New Car',
      imageUrl:
          'https://media.istockphoto.com/photos/audi-a8-on-the-motor-show-picture-id856372138',
    ),
  ];
}
