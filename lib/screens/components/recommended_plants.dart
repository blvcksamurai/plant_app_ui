import 'package:flutter/material.dart';
import 'package:plant_app_lol/constants.dart';
import 'package:plant_app_lol/screens/details/details_sceeen.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
            child: RecommendedPlantCard(
              image: "assets/images/image_1.png",
              title: "Samantha",
              country: "Russia",
              price: 440,
              press: () {},
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
            child: RecommendedPlantCard(
              image: "assets/images/image_2.png",
              title: "Angelica",
              country: "Netherlands",
              price: 440,
              press: () {},
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
            child: RecommendedPlantCard(
              image: "assets/images/image_3.png",
              title: "Greek Dust",
              country: "USA",
              price: 440,
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * .4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                      )
                    ]),
                  ),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: TextStyle(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
