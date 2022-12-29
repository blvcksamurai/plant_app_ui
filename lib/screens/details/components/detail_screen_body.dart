import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_lol/constants.dart';

import 'image_and_iconcard.dart';
import 'title_and_price.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIconsCard(size: size),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                      )),
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kBackgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                          ),
                        )),
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
