
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../../../core/utils/color_manager.dart';

Widget buildMiddleButton(VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: LightColorManager.brandColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Icon(
        Icons.swap_vert,
        color: Colors.white,
        size: 28,
      ),
    ),
  );
}
