import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tintin_app/utils/consts.dart';

class CatalogueAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CatalogueAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Location",
              style: TextStyle(
                color: textColor,
                fontSize: 14
              ),
            ),
            Text(
              "Sidoarjo, Indonesia",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black
              ),
            )
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16), // biar setara sama kiri
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/cart.svg"),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/notification.svg"),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // default syntax apabila ingin mengambil ukuran dari sebuah widget
  // yang mengimplement PreferredSizeWidget
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}