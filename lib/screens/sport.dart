import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/product_list.dart';
import 'package:shop_app/models/sports/sport_list.dart';
import 'package:shop_app/screens/sliver/sport.dart';
import 'package:shop_app/widgets/home/home_drawer.dart';
import 'package:shop_app/widgets/home/sliver_adaptor.dart';

class SportHomePage extends StatefulWidget {
  const SportHomePage({Key? key}) : super(key: key);

  @override
  State<SportHomePage> createState() => _SportHomePageState();
}

class _SportHomePageState extends State<SportHomePage> {
  String? getvalue;
  final TextEditingController _editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<SportProvider>(context, listen: false);
    return Scaffold(
      drawer: const HomeDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.work_outline),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
              ),
            ],
            backgroundColor: Color(0xFF042925),
            title: Text('E-Shop'),
            centerTitle: true,
            pinned: true,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: EdgeInsets.only(top: 50.0),
                margin: EdgeInsets.symmetric(horizontal: 12.0),
                alignment: Alignment.center,
                child: TextField(
                  controller: _editingController,
                  style: TextStyle(color: Colors.white, letterSpacing: 2.0),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      ),
                      contentPadding: EdgeInsets.only(left: 10.0),
                      filled: true,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(26.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFf9f7f7), width: 1.0),
                          borderRadius: BorderRadius.circular(26.0))),
                  onChanged: (value) {
                    _provider.setSearchString = value;
                  },
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: const [
                        Text(
                          'Home ',
                          style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                          child: Text('/',
                              style: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Text(' Sports ',
                            style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold)),
                        // SizedBox(
                        //   width: 10,
                        //   child: Text('/',
                        //       style: TextStyle(
                        //           fontSize: 15,
                        //           letterSpacing: 1,
                        //           fontWeight: FontWeight.bold)),
                        // ),
                        // Text('AC',
                        //     style: TextStyle(
                        //         fontSize: 15,
                        //         letterSpacing: 1,
                        //         fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          HomeSliverAdapter(
            productLength: _provider.products.length,
          ),
          SportSliverProduct(
            productList: Provider.of<SportProvider>(context).products,
          )
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [],
        ),
      ),
      //body: ProductCard(),
    );
  }
}
