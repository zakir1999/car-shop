import 'package:flutter/material.dart';

class FutureProductDetailsPage extends StatelessWidget {
  const FutureProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  floating: false,
                  expandedHeight: 250,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1542751110-97427bbecf20?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1084&q=80'),
                    ),
                  ),
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(Icons.location_on),
                        text: 'Overview',
                        iconMargin: EdgeInsets.zero,
                      ),
                      Tab(
                        icon: Icon(Icons.location_on),
                        text: 'Overview',
                        iconMargin: EdgeInsets.zero,
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: SafeArea(
            child: TabBarView(
              children: [
                SafeArea(
                  child: Builder(
                    builder: (BuildContext context) {
                      return CustomScrollView(
                        slivers: [
                          SliverOverlapInjector(
                            handle:
                                NestedScrollView.sliverOverlapAbsorberHandleFor(
                                    context),
                          ),
                          SliverPadding(
                            padding: const EdgeInsets.all(8.0),
                            sliver: SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                                  return ListTile(
                                    title: Text('Item $index'),
                                  );
                                },
                                childCount: 30,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SafeArea(
                  child: Builder(
                    builder: (BuildContext context) {
                      return CustomScrollView(
                        slivers: [
                          SliverOverlapInjector(
                            handle:
                                NestedScrollView.sliverOverlapAbsorberHandleFor(
                                    context),
                          ),
                          SliverPadding(
                            padding: const EdgeInsets.all(8.0),
                            sliver: SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                                  return ListTile(
                                    title: Text('Item $index'),
                                  );
                                },
                                childCount: 30,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
