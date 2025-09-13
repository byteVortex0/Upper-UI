import 'package:flutter/material.dart';

import '../../../../core/utils/fonts/style_manager.dart';

class AnalysisNewsTab extends StatelessWidget {
  const AnalysisNewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Text("News content", style: StyleManager.white14Medium(context)),
    );
  }
}
