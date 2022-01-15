import 'package:flutter/material.dart';
import 'package:shop_app/models/shop_class.dart';

class FoodProductCard extends StatelessWidget {
  final double? imageHeight;
  final String productName;
  final String? brandName;
  final double price;
  final double discount;
  final String imageUrl;
  final String productId;
  const FoodProductCard(
      {Key? key,
      this.imageHeight,
      required this.productId,
      required this.imageUrl,
      required this.productName,
      this.brandName,
      required this.price,
      required this.discount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/product-details-food',
                    arguments: ProductId(productId: productId));
              },
              child: Image(
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: imageHeight,
                image: NetworkImage(imageUrl),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 7.0,
              ),
              child: Text(productName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(brandName.toString()),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' \$ ${price}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${discount} %',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
