import 'package:flutter/material.dart';

class DevotionalItem extends StatelessWidget {
  const DevotionalItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Expanded(child: Container(
              height: 150.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: AssetImage("images/BAM3232.jpg"),
                ),
              ),
            )
            ),
          ],
        ),
        Column(
          children: [
            Expanded(child: Container(
              height: 150.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: AssetImage("images/BAM3232.jpg"),
                ),
              ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
