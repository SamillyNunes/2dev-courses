import 'package:flutter/material.dart';
import 'package:todev_courses/breakpoints.dart';

class CoursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          shrinkWrap:
              true, // vai encurtar o sufificiente pra caber todos os itens
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.red,
            );
          },
        );
      },
    );
  }
}
