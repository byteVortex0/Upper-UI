import 'package:flutter/material.dart';

import '../../../../../core/utils/fonts/style_manager.dart';

class verifyDetailsSec extends StatelessWidget {
  const verifyDetailsSec({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Color(0xff613DE4),
            shape: BoxShape.rectangle,
          ),
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 10),
        Text(text, style: StyleManager.brand14Meduim(context)),
      ],
    );
  }
}
