import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/fonts/style_manager.dart';

class Switcher extends StatefulWidget {
  const Switcher({super.key, required this.title});

  final String title;

  @override
  State<Switcher> createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher> {
  bool isPhone = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              isPhone ? 'Mobile Number' : 'Email',
              style: StyleManager.white12Regular(context),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isPhone = !isPhone;
                });
              },
              child: Text(
                isPhone
                    ? 'Sign ${widget.title} With Email'
                    : 'Sign ${widget.title} With Phone Number',
                style: StyleManager.brand12Regular(
                  context,
                  LightColorManager.brandColor,
                ),
              ),
            ),
          ],
        ),

        AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          transitionBuilder: (child, animation) {
            final offsetAnimation = Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(animation);

            return SlideTransition(position: offsetAnimation, child: child);
          },
          child:
              isPhone
                  ? IntlPhoneField(
                    key: const ValueKey("phone"),
                    decoration: InputDecoration(
                      labelText: 'Enter your number',
                      hintStyle: StyleManager.gray16Regular(context),
                      labelStyle: StyleManager.gray16Regular(context),
                      counterStyle: StyleManager.gray16Regular(context),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                    initialCountryCode: 'EG',
                    dropdownTextStyle: StyleManager.gray16Regular(context),
                    onChanged: (phone) {},
                  )
                  : TextField(
                    key: const ValueKey("email"),
                    decoration: InputDecoration(
                      labelText: 'Enter your email',
                      labelStyle: StyleManager.gray16Regular(context),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
        ),
      ],
    );
  }
}
