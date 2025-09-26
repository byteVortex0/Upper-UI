import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/features/home/widgets/trade/presentation/view/btc_page.dart';

import '../../../../../../../core/utils/app_images.dart';
import '../../../../../../../core/utils/fonts/style_manager.dart';

/// ================= Trade Content =================
Widget buildCryptoContent(BuildContext context) {
  return ListView(
    padding: EdgeInsets.symmetric(horizontal: 15.w),
    children: [
      // Currency Card
      const SizedBox(height: 10),
      Text(
        "Market",
        style: StyleManager.brand20Medium(
          context,
        ).copyWith(color: Color(0xff111112)),
      ),
      const SizedBox(height: 8),

      CryptoTile(
        imagePath: AppImages.btc,
        name: "Bitcoin",
        symbol: "BTC",
        price: "₽ 3 425 524,0",
        change: "+3,25%",
        changeColor: Colors.green,
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BtcPage(),
            ),
          );
        },
      ),
      CryptoTile(
        imagePath: AppImages.ETH,
        name: "Ethereum",
        symbol: "ETH",
        price: "₽ 189 584,7",
        change: "+6,66%",
        changeColor: Colors.green,
      ),
      CryptoTile(
        imagePath: AppImages.matic,
        name: "Polygon",
        symbol: "MATIC",
        price: "₽ 76,0",
        change: "+1,77%",
        changeColor: Colors.green,
      ),
      CryptoTile(
        imagePath: AppImages.xmy,
        name: "Myriad",
        symbol: "XMY",
        price: "₽ 0,006455",
        change: "-0,01%",
        changeColor: Colors.red,
      ),
      CryptoTile(
        imagePath: AppImages.xrp,
        name: "XRP",
        symbol: "XRP",
        price: "₽ 61,9",
        change: "-4,31%",
        changeColor: Colors.red,
      ),
    ],
  );
}

class CryptoTile extends StatelessWidget {
  final String imagePath;
  final String name;
  final String symbol;
  final String price;
  final String change;
  final Color changeColor;
  VoidCallback? onTap;

  CryptoTile({
    super.key,
    required this.imagePath,
    required this.name,
    required this.symbol,
    required this.price,
    required this.change,
    required this.changeColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6.h, horizontal: 12.w),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Image.asset(
            imagePath,
            width: 60.w,
            height: 90.h,
            fit: BoxFit.cover,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(symbol, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(
                change,
                style: TextStyle(
                  color: changeColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(price),
            ],
          ),
        ),
      ),
    );
  }
}
