import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_lol/constants.dart';
import 'package:plant_app_lol/screens/components/featured_plants.dart';
import 'package:plant_app_lol/screens/components/header_with_search_box.dart';
import 'package:plant_app_lol/screens/components/recommended_plants.dart';
import 'package:plant_app_lol/screens/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    //provides height and width of the screen
    Size size = MediaQuery.of(context).size;
    //enables Scrolling on smaller devices
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: "Recommended",
            press: () {},
          ),
          RecommendedPlants(),
          TitleWithMoreButton(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
