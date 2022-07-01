import 'package:flutter/material.dart';
import 'package:mampir_foto/components/app_bar.dart';
import 'package:mampir_foto/components/custom_bottom_nav_bar.dart';

import 'components/body.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "Pesanan"),
      body: Body(),
      bottomNavigationBar: CustomBottonNavBar(),
    );
  }
}
