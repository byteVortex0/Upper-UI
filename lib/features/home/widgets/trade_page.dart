import 'package:flutter/material.dart';
import 'package:upper/core/utils/fonts/style_manager.dart';

class TradePage extends StatelessWidget {
  const TradePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Trade Page", style: StyleManager.white14Medium(context)),
    );
  }
}
