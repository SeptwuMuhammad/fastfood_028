import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Color.fromARGB(255, 255, 255, 255),
    leading: IconButton(
      onPressed: () {},
      icon: SvgPicture.asset('assets/icons/menu.svg'),
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .titleMedium
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(text: 'I want to', style: TextStyle(color: kPrimaryColor)),
          TextSpan(
            text: ' EAT',
            style: TextStyle(color: ksecondaryColor),
          ),
        ],
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/notification.svg'),
      )
    ],
  );
}
