import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/core/extensions/context_extension.dart';
import 'package:upper/core/utils/fonts/style_manager.dart';
import 'package:upper/features/home/widgets/header.dart';
import 'package:upper/features/home/widgets/analysis/analysis_graph.dart';

import '../../../../core/utils/color_manager.dart';
import 'analysis_article_tab.dart';
import 'analysis_news_tab.dart';

class AnalysisPage extends StatelessWidget {
  const AnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                    vertical: 10.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Header(),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Article Name',
                            style: StyleManager.white14Medium(context),
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
                      AnalysisGraph(),
                      SizedBox(height: 10.h),

                      TabBar(
                        // controller: _tabController,
                        labelColor: LightColorManager.brandColor,
                        unselectedLabelColor: context.color.textColor,
                        indicatorColor: LightColorManager.brandColor,
                        labelStyle: StyleManager.white14Medium(context),
                        tabs: const [Tab(text: "Article"), Tab(text: "News")],
                      ),
                    ],
                  ),
                ),
              ),
            ],
        body: TabBarView(
          children: [
            // Tab 1
            AnalysisArticleTab(),
            // Tab 2
            AnalysisNewsTab(),
          ],
        ),
      ),
    );
  }
}
