import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Zendots",
                      fontSize: 25),
                ),
                TextSpan(
                  text: "$country",
                  style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: TextStyle(
              fontSize: 20,
              color: kPrimaryColor,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
