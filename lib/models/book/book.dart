import 'package:flutter/material.dart';

class BookProduct {
  final String productId, image, name, description, author, category, brandName;
  final String publication_date, isbn_no;
  final int size;
  final double price;
  final Color color;

  BookProduct({
    required this.productId,
    required this.image,
    required this.name,
    required this.price,
    required this.description,
    required this.brandName,
    required this.size,
    required this.color,
    required this.author,
    required this.category,
    required this.publication_date,
    required this.isbn_no,
  });
}
