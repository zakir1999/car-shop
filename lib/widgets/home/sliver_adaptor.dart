import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/product_list.dart';

class HomeSliverAdapter extends StatefulWidget {
  final int? productLength;
  const HomeSliverAdapter({Key? key, this.productLength}) : super(key: key);

  @override
  State<HomeSliverAdapter> createState() => _HomeSliverAdapterState();
}

class _HomeSliverAdapterState extends State<HomeSliverAdapter> {
  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<ProductProvider>(context);

    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: widget.productLength == null
                  ? Text('total ( 0 )')
                  : Text('total ( ${widget.productLength} )'),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _provider.setAxis = 2;
                          _provider.setImageHeight = 160;
                          _provider.setexpandedHeight = 280.0;
                        });
                      },
                      icon: Icon(Icons.grid_view_rounded,
                          color: _provider.crossAxisCounts == 2
                              ? Colors.black
                              : Colors.grey)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _provider.setAxis = 1;
                          _provider.setImageHeight = 260.0;
                          _provider.setexpandedHeight = 380.0;
                        });
                      },
                      icon: Icon(Icons.ballot_rounded,
                          color: _provider.crossAxisCounts == 1
                              ? Colors.black
                              : Colors.grey)),
                ],
              ),
            ),
            Container(
              child: IconButton(
                icon: const Icon(
                  Icons.filter_alt_rounded,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
