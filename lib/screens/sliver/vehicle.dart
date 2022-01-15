import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/product_list.dart';
import 'package:shop_app/widgets/productCart/vehicle.dart';

class VehicleSliverProduct extends StatelessWidget {
  final List productList;
  const VehicleSliverProduct({Key? key, required this.productList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<ProductProvider>(context);
    //final _product = _provider.products;

    return productList == null
        ? SliverToBoxAdapter(
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                child: Text('No search product'),
              ),
            ),
          )
        : SliverGrid(
            delegate: SliverChildBuilderDelegate(
                (context, index) => VehicleProductCard(
                      productId: productList[index].productId,
                      imageHeight: _provider.imageHeight,
                      productName: productList[index].name,
                      brandName: productList[index].brandName,
                      price: productList[index].price,
                      discount: productList[index].discount,
                      imageUrl: productList[index].imageUrl,
                    ),
                childCount: productList.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: _provider.crossAxisCounts,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              mainAxisExtent: _provider.expandedHeight,
            ),
          );
  }
}
