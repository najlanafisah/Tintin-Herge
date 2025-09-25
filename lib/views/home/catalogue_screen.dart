import 'package:flutter/material.dart';
import 'package:tintin_app/utils/consts.dart';
import 'package:tintin_app/views/home/components/app_bar.dart';
import 'package:tintin_app/views/home/components/balance_card.dart';
import 'package:tintin_app/views/home/components/banner_slider.dart';
import 'package:tintin_app/views/home/components/bottom_nav_bar.dart';
import 'package:tintin_app/views/home/components/categories.dart';
import 'package:tintin_app/views/home/components/comics_grid.dart';

class CatalogueScreen extends StatefulWidget {
  
  const CatalogueScreen({super.key});

  @override
  State<CatalogueScreen> createState() => _CatalogueScreenState();
}

class _CatalogueScreenState extends State<CatalogueScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    // TODO: menampilkan list dari widget yang akan ditampilkan di bottom navbar
    // wishlist screen
    // setting screen
    // profile screen 
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0 ? CatalogueAppBar() : null,
      body: _selectedIndex == 0 
          ? SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BalanceCard(),
                BannerSlider(),
                SizedBox(height: 15),
                Categories(),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Text(
                    "Comics",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: textColor
                    ),
                  ),
                ),
                ComicsGrid()
              ],
            ),
          ) 
        : _widgetOptions[_selectedIndex - 1], // karena tab ke-0 adalah katalog screen
        bottomNavigationBar: BottomNavBar(selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}