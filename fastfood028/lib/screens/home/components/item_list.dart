import 'package:flutter/material.dart';

import '../../details/details_screen.dart';
import 'item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
            svgSrc: 'assets/icons/nuts_caramel.svg',
            title: 'Nuts Caramel',
            shopName: "Dunkin's",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            svgSrc: 'assets/icons/red_velvet.svg',
            title: 'Red Velvet',
            shopName: "Dunkin's",
            press: () {},
          ),
          ItemCard(
            svgSrc: 'assets/icons/red_velvet.svg',
            title: 'Strawberry',
            shopName: "Dunkin's",
            press: () {},
          ),
          ItemCard(
            svgSrc: 'assets/icons/red_velvet.svg',
            title: 'Choco Top',
            shopName: "Dunkin's",
            press: () {},
          )
        ],
      ),
    );
  }
}
