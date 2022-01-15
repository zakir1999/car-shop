import 'package:flutter/material.dart';

class Sport {
  final String? gametype, productId;
  final String? image, name, description, brandName;
  final int? size;
  final Color? color;
  //final Image? image;
  final double? price;
  Sport({
    this.productId,
    this.image,
    this.name,
    this.price,
    this.description,
    this.brandName,
    this.size,
    this.color,
    this.gametype,
  });
}
