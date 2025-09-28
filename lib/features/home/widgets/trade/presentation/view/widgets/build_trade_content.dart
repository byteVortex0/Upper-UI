
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/utils/fonts/style_manager.dart';
import '../../../../trade_page.dart';
import '../trade_card.dart';

/// ================= Trade Content =================
Widget buildTradeContent(BuildContext context) {
  return ListView(
    padding: EdgeInsets.symmetric(horizontal: 15.w),
    children: [
      // Currency Card
      const SizedBox(height: 10),
      TradeCard(),
      // Order Book Section
      const SizedBox(height: 20),

      Text(
        "Order Book",
        style: StyleManager.brand20Medium(
          context,
        ).copyWith(color: Color(0xff111112)),
      ),
      const SizedBox(height: 8),
      RowHeadOFTable(),
      buildOrderBookTable(context),
      const SizedBox(height: 20),

      // Recent Transactions
      Text(
        "Recent Transactions",
        style: StyleManager.brand20Medium(
          context,
        ).copyWith(color: Color(0xff111112)),
      ),
      const SizedBox(height: 8),
      RowHeadOFTable(),

      buildRecentTransactions(context),
    ],
  );
}

class RowHeadOFTable extends StatelessWidget {
  const RowHeadOFTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Price (USDT)",
              style: StyleManager.brand16Medium.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,

                color: Color(0xff111112),
              ),
            ),
          ),
          Expanded(
            child: Text(
              "Quantity (BTC)",
              style: StyleManager.brand16Medium.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: Color(0xff111112),
              ),
            ),
          ),
          Expanded(
            child: Text(
              "Totals (BTC)",
              style: StyleManager.brand16Medium.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: Color(0xff111112),
              ),
            ),
          ),
        ],
      ),
    );
  }
}