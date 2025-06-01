import 'package:flutter/material.dart';

import 'order_page.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  final List<Widget> _pages = [
    OrderPage(),
    Center(child: Text('Pro Page')),
    Center(child: Text('Nutrition Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 60,
        onDestinationSelected: (int index) {
          currentPageIndex = index;
          setState(() {   });
         },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,

        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.shopping_bag_outlined), label: 'Order',),
          NavigationDestination(icon: Icon(Icons.bubble_chart_outlined), label: 'Go out',),
          NavigationDestination(icon: Badge(child: Icon(Icons.workspace_premium_outlined)), label: 'Pro',),
          NavigationDestination( icon: Badge(label: Text('2'), child: Icon(Icons.favorite_outline)),label: 'Nutrition',),
        ],
      ),

        body: _pages[currentPageIndex]

    );
  }
}
