import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'search_fields.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getProportionateScreenWidth(25)),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/Hammock.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: getProportionateScreenHeight(315),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getProportionateScreenHeight(80)),
              Text(
                "MampirFoto",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(50),
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    height: 0.5),
              ),
              Text(
                "Komunitas Foto Terbaik di Indonesia",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Positioned(
            bottom: getProportionateScreenWidth(-25),
            child: SearchField(),
          )
        ],
      ),
    );
  }
}
