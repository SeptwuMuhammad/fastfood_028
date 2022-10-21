import 'package:fastfood028/constants.dart';
import 'package:flutter/material.dart';


import 'item_img.dart';
import 'order_button.dart';
import 'title_price_rating.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemImage(imgSrc: 'assets/images/logodunkins.jpg'),
        Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          shopName(name: "Dunkin's Donuts Botani Square Mall"),
          TtitlePriceRating(
            name: "Nuts Caramel",
            nomOfReviews: 32,
            price: 36,
            rating: 4,
            onRatingChange: (ra) {
              print(ra);
            },
          ),
          Text(
            'The Sweet and Subtle Salty Combo of Nuts Meets Caramel. Introduce The Caramel Duo To Your Mouth!',
            style: TextStyle(height: 1.5),
          ),
          SizedBox(height: size.height * 0.1),
          OrderButton(size: size, press: () {})
        ],
      ),
    );
  }

  Row shopName({String name}) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name)
      ],
    );
  }
}
