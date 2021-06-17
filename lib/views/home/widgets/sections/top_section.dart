import 'package:flutter/material.dart';
import 'package:todev_courses/breakpoints.dart';
import 'package:todev_courses/views/home/widgets/custom_search_field.dart';

import 'message_card.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= 1200) {
          return AspectRatio(
            aspectRatio: 3.4,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    "https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: MessageCard(),
                ),
              ],
            ),
          );
        }
        // se eh maior que o breakpoint do mobile, significa que ele eh um tablet ou
        // web, mas como a web ja foi tratada, entao eh o tablet
        if (maxWidth >= mobileBreakpoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.network(
                    "https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: MessageCard(
                    isSmaller: true,
                  ),
                ),
              ],
            ),
          );
        }

        return Container();
      },
    );
  }
}
