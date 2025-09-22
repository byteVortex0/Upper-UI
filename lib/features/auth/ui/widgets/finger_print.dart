import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/fonts/style_manager.dart';

class FingerPrint extends StatelessWidget {
  const FingerPrint({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),

            decoration: BoxDecoration(
              color: LightColorManager.brandColor,
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Icon(
              Icons.fingerprint_outlined,
              color: Colors.white,
              size: 30.sp,
            ),
          ),

          SizedBox(height: 10.h),

          Text(
            'Use fingerprint instead?',
            style: StyleManager.gray16Regular(context),
          ),
        ],
      ),
    );
  }
}
