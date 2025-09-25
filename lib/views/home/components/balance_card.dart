import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tintin_app/utils/consts.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultPadding),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/wallet.svg",
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Tinpay",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Rp 999.900",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _actionButton(SvgPicture.asset("assets/icons/arrow.svg"), "Pay"),
                _actionButton(SvgPicture.asset("assets/icons/plus.svg"), "Top Up"),
                _actionButton(SvgPicture.asset("assets/icons/explore.svg"), "Explore"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _actionButton(Widget icon, String label) {
    return Column(
      children: [
        icon,
        SizedBox(height: 4),
        Text(label, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
