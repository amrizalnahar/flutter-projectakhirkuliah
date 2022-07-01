import 'package:flutter/material.dart';
import 'package:mampir_foto/components/app_bar.dart';
import 'package:mampir_foto/components/custom_bottom_nav_bar.dart';

import 'components/body.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "About Mampir Foto"),
      body: Body(),
      bottomNavigationBar: CustomBottonNavBar(),
    );
  }
}
