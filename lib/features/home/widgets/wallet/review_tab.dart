import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/common/custom_button.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/utils/color_manager.dart';
import 'package:upper/features/home/widgets/analysis/article_tab_search.dart';
import 'package:upper/features/home/widgets/wallet/crypto_donut_chart.dart';
import 'package:upper/features/home/widgets/wallet/review_list_item.dart';
import 'package:upper/features/home/widgets/wallet/wallet_graph.dart';

import '../../../../core/utils/fonts/font_weight_helper.dart';
import '../../../../core/utils/fonts/style_manager.dart';
import 'horizontal_list_item.dart';

class ReviewTab extends StatelessWidget {
  const ReviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Statistics',
                style: StyleManager.white14Medium(
                  context,
                ).copyWith(fontWeight: FontWeightHelper.bold),
              ),
              Container(
                decoration: BoxDecoration(
                  color: context.color.bgContainer,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.fullscreen,
                    size: 24.sp,
                    color: context.color.textColor,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),

          WalletGraph(),

          SizedBox(height: 10.h),

          SizedBox(
            height: 190.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => HorizontalListItem(),
              separatorBuilder: (context, index) => SizedBox(width: 10.h),
              itemCount: 4,
            ),
          ),

          SizedBox(height: 10.h),

          CustomButton(onPressed: () {}, text: 'Buy'),

          SizedBox(height: 15.h),

          CryptoDonutChart(),

          SizedBox(height: 10.h),

          Text(
            'Popular strategies',
            style: StyleManager.white20Medium(context),
          ),

          SizedBox(height: 10.h),

          ArticleTabSearch(),

          SizedBox(height: 10.h),

          ListView.separated(
            itemBuilder: (context, index) => ReviewListItem(),
            separatorBuilder: (context, index) => SizedBox(height: 10.h),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
          ),

          SizedBox(height: 10.h),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.r),
                  side: BorderSide(
                    color: LightColorManager.brandColor,
                    width: 1,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 8.h),
              ),
              child: Text(
                'View all',
                style: StyleManager.white16Regular(
                  context,
                ).copyWith(fontWeight: FontWeightHelper.medium),
              ),
            ),
          ),

          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
