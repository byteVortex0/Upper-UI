import 'package:flutter/material.dart';
import 'package:upper/core/extensions/context_extension.dart';
import '../../../../core/routes/app_routes.dart';
import 'widgets/account_setup_content_sec.dart';
import '../../../../core/common/app_bar_widget.dart';
import 'widgets/elevated_button_widget.dart';
import 'widgets/text_field_widget.dart';

class AccountSetup2 extends StatelessWidget {
  const AccountSetup2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            AccountSetupContentSec(
              text1: "Home Addres",
              text2: "This info needs to be accurate with your ID document.",
            ),
            TextFieldWidget(
              hintText: 'House number and street name',
              topFieldText: "Address Line",
            ),
            TextFieldWidget(
              hintText: 'House number and street name',
              topFieldText: "Address Line",
            ),
            TextFieldWidget(hintText: 'City, State', topFieldText: "City"),
            TextFieldWidget(hintText: 'Ex: 0000', topFieldText: "Postcode"),
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButtonWidget(
        textColor: Color(0xffD4D4D4),
        onPressed: () {
          context.pushReplacementNamed(AppRoutes.accountSetup3Path);
        },
      ),
    );
  }
}
