import 'dart:ui';

import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('My Cart ( 4 )'),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Card(
                child: Row(
                  children: [
                    SizedBox(
                      width: 12.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      child: Image.network(
                        'https://images.unsplash.com/photo-1622473590925-e3616c0a41bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=692&q=80',
                        //width: 120,
                        fit: BoxFit.cover,
                        height: 80,
                      ),
                    ),
                    SizedBox(
                      width: 36.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.7,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'product name is',
                              //overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text('45667'),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.remove),
                                      ),
                                      Text('4'),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.add),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }, childCount: 2),
          ),
        ],
      ),
    );
  }
}
