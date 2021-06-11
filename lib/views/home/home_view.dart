import 'package:flutter/material.dart';
import 'package:todev_courses/views/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:todev_courses/views/home/widgets/app_bar/web_app_bar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Scaffold(
            appBar: constraints.maxWidth < 800
                ? PreferredSize(
                    child: MobileAppBar(),
                    preferredSize: Size(double.infinity, 56))
                : PreferredSize(
                    child: WebAppBar(),
                    preferredSize: Size(double.infinity, 72)),
            drawer: Drawer(),
          );
        },
      ),
    );
  }
}
