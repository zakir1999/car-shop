class Cosmetic {
  final String productId;
  final String name;
  final double price;
  final double discount;
  final String categoryName;
  final String subCategoryName;
  final String brandName;
  final String? warrenty;
  final String imageUrl;
  final bool productStock;
  final String productDetails;
  Cosmetic({
    required this.productId,
    required this.name,
    required this.price,
    required this.discount,
    required this.categoryName,
    required this.subCategoryName,
    required this.brandName,
    required this.productDetails,
    this.warrenty,
    required this.imageUrl,
    this.productStock = true,
  });
}
