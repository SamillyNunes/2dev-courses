import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlP2mkuMhzC0nxlHEkH-Z2w2kE2wsC0XXmGA&usqp=CAU",
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        Flexible(
          flex: 3,
          child: AutoSizeText(
            "Criação de Apps Android e IOS com Flutter",
            minFontSize: 3,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: AutoSizeText(
            "Samilly Nunes",
            textAlign: TextAlign.start,
            minFontSize: 2,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: AutoSizeText(
            "R\$29,90",
            textAlign: TextAlign.start,
            minFontSize: 2,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
