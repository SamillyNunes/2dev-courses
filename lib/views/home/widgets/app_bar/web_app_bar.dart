import 'package:flutter/material.dart';
import 'package:todev_courses/views/home/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        children: [
          Text(
            "Flutter",
          ),
          const SizedBox(width: 32),
          WebAppBarResponsiveContent(),
          const SizedBox(width: 32),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          const SizedBox(width: 34),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Fazer login",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 38,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Cadastre-se",
                style: TextStyle(color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
          ),
        ],
      ),
      toolbarHeight: 72,
    );
  }
}
