import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightGreen.shade700,
      child: ListView(
        children: [
          Container(
            height: 150,
            color: Colors.lightGreen.shade900,
          ),
          const DrawerContainer(
            buttonString: 'Book',
            routeName: '/book',
          ),
          const DrawerContainer(
            buttonString: 'Gadgets',
            routeName: '/gadgets',
          ),
          const DrawerContainer(
            buttonString: 'Cosmetics',
            routeName: '/cosmetics',
          ),
          const DrawerContainer(
            buttonString: 'Food',
            routeName: '/food',
          ),
          const DrawerContainer(
            buttonString: 'Sport',
            routeName: '/sports',
          ),
          const DrawerContainer(
            buttonString: 'Vehicle',
            routeName: '/vehicle',
          ),
          const DrawerContainer(
            buttonString: 'Fashion',
            routeName: '/fashion',
          ),
          const DrawerContainer(
            buttonString: 'Firniture',
            routeName: '/firniture',
          ),
        ],
      ),
    );
  }
}

class DrawerContainer extends StatelessWidget {
  final String buttonString;
  final String? routeName;
  const DrawerContainer({Key? key, required this.buttonString, this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 16.0),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white))),
      child: TextButton(
        style: TextButton.styleFrom(
            alignment: Alignment.centerLeft,
            fixedSize: Size.fromWidth(MediaQuery.of(context).size.width)),
        child: Text(
          buttonString.toString(),
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        onPressed: () {
          if (routeName != null) {
            Navigator.of(context).pushNamed(routeName!);
          }
        },
      ),
    );
  }
}
