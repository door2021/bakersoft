import 'package:flutter/material.dart';
import 'package:sibol/app/bloc/cart/cart_cubit.dart';
import 'package:sibol/app/screens/ProductsOverviewScreen.dart';
import 'package:sibol/app/screens/ShoppingCartScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;

  final screenTabs = [
    ProductOverview(),
    ShoppingCart()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenTabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade500,
        currentIndex: _index,
        onTap: (val){
          setState((){
            _index = val;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Cart'),
        ],
      ),
    );
  }
}
