import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/utils/fonts/font_weight_helper.dart';
import 'package:upper/core/utils/fonts/style_manager.dart';

import '../../../../core/utils/color_manager.dart';
import '../header.dart';
import 'review_tab.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Header(),
                    SizedBox(height: 10.h),

                    Text(
                      '\$2 412 423, 8',
                      style: StyleManager.white28Medium(context),
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 3.h,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff613DE4).withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Text(
                        'Today: 30, Okt. 2023',
                        style: StyleManager.white12Bold(
                          context,
                        ).copyWith(fontWeight: FontWeightHelper.medium),
                      ),
                    ),

                    SizedBox(height: 10.h),

                    TabBar(
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      labelColor: LightColorManager.brandColor,
                      unselectedLabelColor: context.color.textColor,
                      indicatorColor: LightColorManager.brandColor,
                      labelStyle: StyleManager.white14Medium(context),
                      tabs: const [
                        Tab(text: "Review"),
                        Tab(text: "Cryptocurrency"),
                        Tab(text: "NFT"),
                      ],
                    ),

                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            ReviewTab(),
            SingleChildScrollView(
              child: Center(
                child: Text(
                  "Cryptocurrency Content",
                  style: StyleManager.white14Medium(context),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: Text(
                  "NFT Content",
                  style: StyleManager.white14Medium(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
