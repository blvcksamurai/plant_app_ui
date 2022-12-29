import 'package:flutter/material.dart';
import 'package:plant_app_lol/screens/components/body.dart';
import 'package:plant_app_lol/screens/details/components/detail_screen_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsScreenBody(),
    );
  }
}
