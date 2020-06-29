import 'package:flutter/material.dart';
import 'package:flutter_plant_app/utils/constants.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recommened_plants.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // It enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recommended', press: () {}),
          RecommendsPlants(),
          TitleWithMoreBtn(title: 'Featured Plants', press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}







