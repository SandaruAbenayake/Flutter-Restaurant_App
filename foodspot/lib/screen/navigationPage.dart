import 'package:flutter/material.dart';
import 'package:foodspot/screen/cart.dart';
import 'package:foodspot/screen/home.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  final List<Widget> _pages = [Text("favaorit"), HomePage(), Cart()];
  int _selectIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_sharp), label: "favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile")
        ],
        currentIndex: _selectIndex,
        onTap: (value) {
          setState(() {
            _selectIndex = value;
          });
        },
      ),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            backgroundColor: Colors.white,
            title: const Text(
              "Hi, Sandaru",
              style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontWeight: FontWeight.w600,
                  fontSize: 40),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_outlined))
            ],
          )),
      body: _pages[_selectIndex],
    );
  }
}
