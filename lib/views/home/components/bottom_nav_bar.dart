import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const BottomNavBar({super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/home.svg"),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/favorite.svg"),
          label: "Wishlist",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/settings.svg"),
          label: "Setting",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/profile.svg"),
          label: "Profile",
        ),
      ],
      currentIndex: selectedIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: onItemTapped,
    );
  }
}
