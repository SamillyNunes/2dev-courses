import 'package:flutter/material.dart';

import '../custom_search_field.dart';

class MessageCard extends StatelessWidget {
  final bool isSmaller;

  const MessageCard({
    Key? key,
    this.isSmaller = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: Colors.black,
      child: Container(
        width: isSmaller ? 350 : 450,
        padding: EdgeInsets.all(22),
        child: Column(
          children: [
            Text(
              "Aprenda Flutter com este curso",
              style: TextStyle(
                fontSize: isSmaller ? 35 : 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Bora mudar de vida e recomeçar? Cursos a partir de R\$29,99. Qualidade garantida, seu sucesso nas suas mãos",
              style: TextStyle(
                fontSize: isSmaller ? 15 : 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            CustomSearchField(),
          ],
        ),
      ),
    );
  }
}
