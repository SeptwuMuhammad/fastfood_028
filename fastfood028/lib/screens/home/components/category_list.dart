import 'package:flutter/material.dart';

import 'category_item.dart';

enum Category {
  meal,
  chicken,
  beverage,
  snacks,
}

class CategoryList extends StatefulWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  Category cat = Category.meal;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CategoryItem(
            title: 'Donuts',
            isActive: cat == Category.meal,
            press: () {
              setState(() {
                cat = Category.meal;
              });
            },
          ),
          CategoryItem(
            title: 'Burger',
            isActive: cat == Category.chicken,
            press: () {
              setState(() {
                cat = Category.chicken;
              });
            },
          ),
          CategoryItem(
            title: 'Smothie',
            press: () {},
          ),
          CategoryItem(
            title: 'Pancake',
            press: () {},
          ),
          CategoryItem(
            title: 'Pizza',
            press: () {},
          )
        ],
      ),
    );
  }
}
