import 'package:flutter/material.dart';

import '../../../../../core/utils/theme/color_theme_extension.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorThemeExtension>()!;

    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios, color: colors.iconColor),
      ),
      actions:  [
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Icon(Icons.cancel, color: colors.iconColor),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(2),
        child: Container(color: Color(0xff613DE4), height: 2),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 2);
}
