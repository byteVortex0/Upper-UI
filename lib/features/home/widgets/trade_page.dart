import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/utils/fonts/style_manager.dart';
import 'package:upper/features/home/widgets/header.dart';
import 'package:upper/features/home/widgets/trade/presentation/view/widgets/build_crypto_content.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/fonts/font_weight_helper.dart';
import 'trade/presentation/view/widgets/build_trade_content.dart';

class TradePage extends StatelessWidget {
  const TradePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        body: Column(
          children: [
            /// ======= Header + TabBar =======
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Expanded(
                        child: TabBar(
                          isScrollable: true,
                          labelColor: LightColorManager.brandColor,
                          unselectedLabelColor: context.color.textColor,
                          indicatorColor: LightColorManager.brandColor,
                          labelStyle: StyleManager.white14Medium(context),
                          tabs: const [
                            Tab(text: "Current"),
                            Tab(text: "All"),
                            Tab(text: "Cryptocurrency"),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  buildTradeContent(context), // Current
                  buildTradeContent(context), // All
                  buildCryptoContent(context), // Crypto
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/// ================= Order Book =================
Widget buildOrderBookTable(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      children: [
        buildRow("36 461.5", "0.067", "8.356", Colors.red, context),
        buildRow("36 461.3", "1.250", "5.938", Colors.red, context),
        buildRow("36 460.8", "0.220", "4.621", Colors.red, context),
        buildRow("36 453.3", "0.196", "0.199", Colors.green, context),
        buildRow("36 453.0", "0.133", "0.334", Colors.green, context),
        buildRow("36 452.1", "0.122", "0.500", Colors.green, context),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "See All",
              style: StyleManager.brand16Medium.copyWith(fontSize: 16.sp),
            ),
          ),
        ),
      ],
    ),
  );
}

/// ================= Recent Transactions =================
Widget buildRecentTransactions(BuildContext context) {
  return Column(
    children: [
      ...List.generate(
        8,
        (index) =>
            buildRow("36 461.5", "0.067", "8.356", Colors.green, context),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () {},
          child: Text(
            "See All",
            style: StyleManager.brand16Medium.copyWith(fontSize: 16.sp),
          ),
        ),
      ),
    ],
  );
}

/// ================= Row Builder =================
Widget buildRow(
  String price,
  String qty,
  String total,
  Color color,
  BuildContext context,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
    child: Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: Color(0xffE0E0E0), width: 1),
              ),
              color: color.withOpacity(0.1),
            ),
            child: Text(
              price,
              style: StyleManager.brand16Medium.copyWith(
                color: context.color.textColor,
                fontWeight: FontWeightHelper.regular,
                fontSize: 14.sp,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: Color(0xffE0E0E0), width: 1),
              ),
              color: color.withOpacity(0.1),
            ),
            child: Text(
              qty,
              style: StyleManager.brand16Medium.copyWith(
                color: context.color.textColor,
                fontWeight: FontWeightHelper.regular,
                fontSize: 14.sp,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: Color(0xffE0E0E0), width: 1),
              ),
              color: color.withOpacity(0.1),
            ),
            child: Text(
              total,
              style: StyleManager.brand16Medium.copyWith(
                color: context.color.textColor,
                fontWeight: FontWeightHelper.regular,
                fontSize: 14.sp,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
