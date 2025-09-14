import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upper/features/home/widgets/analysis/article_tab_list_item.dart';
import 'package:upper/features/home/widgets/analysis/article_tab_notice.dart';

import 'article_tab_search.dart';

class AnalysisArticleTab extends StatelessWidget {
  const AnalysisArticleTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: Column(
        children: [
          ArticleTabSearch(),
          SizedBox(height: 10.h),
          ArticleTabNotice(),

          SizedBox(height: 10.h),
          ListView.separated(
            itemBuilder: (context, index) => ArticleTabListItem(),
            separatorBuilder: (context, index) => SizedBox(height: 10.h),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
          ),
        ],
      ),
    );
  }
}
