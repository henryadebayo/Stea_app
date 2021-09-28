import 'package:flutter/material.dart';

class DevotionalItem extends StatelessWidget {
  const DevotionalItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                    children: [

                    ],

            ),
          ),
      ],
    );
  }
}
