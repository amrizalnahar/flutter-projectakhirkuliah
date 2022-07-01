import 'package:flutter/material.dart';
import 'package:mampir_foto/size_config.dart';

import 'home_header.dart';
import 'popular_places.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call SizeConfig on your starting page
    SizeConfig().init(context);
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            HomeHeader(),
            VerticalSpacing(),
            PopularPlaces(),
            VerticalSpacing(),
            // TopTravelers(),
            // VerticalSpacing(),
          ],
        ),
      ),
    );
  }
}
