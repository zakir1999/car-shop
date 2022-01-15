import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/book/book.dart';
import 'package:shop_app/models/book/book_list.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/models/product_list.dart';
import 'package:shop_app/models/shop_class.dart';

class BookDetailsPage extends StatefulWidget {
  const BookDetailsPage({Key? key}) : super(key: key);

  @override
  State<BookDetailsPage> createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as ProductId;

    Iterable<BookProduct> _product = Provider.of<BookProvider>(context)
        .products
        .where((element) => element.productId == arg.productId);

    final _productDiscount = _product.first.price * (00 / 100);
    final _productPrice = _product.first.price - _productDiscount;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 6.0, top: 6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange.shade400,
                  padding:
                      EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0)),
              onPressed: () {},
              child: Text(
                'Buy Now',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.red.shade400,
                  padding:
                      EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0)),
              onPressed: () {},
              child: Text(
                'Add to cart',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: true,
            pinned: true,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.grey.shade700),
            expandedHeight: 270,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                  fit: BoxFit.cover, image: NetworkImage(_product.first.image)),
            ),
            actions: [
              TextButton(
                style: TextButton.styleFrom(alignment: Alignment.centerLeft),
                onPressed: () {
                  Navigator.of(context).pushNamed('/my-cart');
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.grey.shade700,
                ),
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.only(bottom: 16.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 12.0),
                              child: Text(
                                '\$ ${_productPrice}',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_border,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.share,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                _product.first.price.toString(),
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text('- 00.0 %'),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 12.0),
                        child: Text(_product.first.name),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star_rate_sharp,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star_rate_sharp,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star_rate_sharp,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star_rate_sharp,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.amber,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Text('4.4')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          'High Lights',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        width: double.infinity,
                        padding: EdgeInsets.only(bottom: 16.0, left: 12.0),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 12.0, left: 12.0),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 16.0,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text('brand : ${_product.first.brandName}')
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 16.0,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    'category : ${_product.first.category}',
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 16.0,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text('Author name : ${_product.first.author}')
                                ],
                              ),
                            ),
                            // Container(
                            //   child: Row(
                            //     children: [
                            //       Icon(
                            //         Icons.circle,
                            //         size: 16.0,
                            //       ),
                            //       SizedBox(
                            //         width: 10.0,
                            //       ),
                            //       Text('warrenty : ${_product.first.warrenty}')
                            //     ],
                            //   ),
                            // ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 16.0,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.2,
                                    child: Text(
                                      'details : ${_product.first.description}',
                                      maxLines: 2,
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey),
                          bottom: BorderSide(
                            color: Colors.grey,
                          ))),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(12.0, 12.0, 0.0, 12.0),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Ratings & Reviews (34)'),
                            TextButton(
                                style: TextButton.styleFrom(
                                    primary: Colors.orange.shade400),
                                onPressed: () {},
                                child: Text('View All')),
                          ],
                        ),
                      ),
                      ProductRatingContainer(),
                      ProductRatingContainer(),
                      ProductRatingContainer(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'Questions about this Product (100)',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                  primary: Colors.orange.shade400,
                                ),
                                onPressed: () {},
                                child: Text('View All'))
                          ],
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.chat_bubble_rounded,
                          color: Colors.deepOrange.shade400,
                        ),
                        title: Align(
                          child: Text(
                            'voucher kivabe pabo kome kenar jonno',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          alignment: Alignment(-1.9, 0),
                        ),
                        subtitle: Align(
                          child: Text(
                            'Md L - 12 Dec 2022',
                            style: TextStyle(color: Colors.grey),
                          ),
                          alignment: Alignment(-1.2, 0),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.chat_bubble_rounded,
                          color: Colors.grey.shade400,
                        ),
                        title: Align(
                          child: Text(
                            'Shop Voucher apply koren',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          alignment: Alignment(-1.3, 0),
                        ),
                        subtitle: Align(
                          child: Text(
                            'Md L - 12 Dec 2022',
                            style: TextStyle(color: Colors.grey),
                          ),
                          alignment: Alignment(-1.2, 0),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                            color: Colors.grey,
                          ),
                          bottom: BorderSide(
                            color: Colors.grey,
                          ))),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      'Ask Questions',
                      style: TextStyle(color: Colors.red.shade400),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 1,
            children: [
              Container(
                height: 200,
                color: Colors.green,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProductRatingContainer extends StatelessWidget {
  const ProductRatingContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Text('Limon'),
                      SizedBox(
                        child: Text(' - '),
                      ),
                      Text('3 days ago')
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.star_rate,
                        color: Colors.amber,
                        size: 16.0,
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Colors.amber,
                        size: 16.0,
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Colors.amber,
                        size: 16.0,
                      ),
                      Icon(
                        Icons.star_border_purple500_sharp,
                        color: Colors.amber,
                        size: 16.0,
                      ),
                      Icon(
                        Icons.star_border_purple500_sharp,
                        color: Colors.amber,
                        size: 16.0,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('this product is good but delivery late'),
          ),
          Container(
            child: GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  mainAxisSpacing: 7.0,
                  crossAxisSpacing: 7.0),
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1595066349400-7ebe04391d26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1595066349400-7ebe04391d26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1595066349400-7ebe04391d26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1595066349400-7ebe04391d26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
