import 'package:flutter/material.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/fonts/style_manager.dart';
import '../../../../core/utils/theme/color_theme_extension.dart';
import 'widgets/account_setup_content_sec.dart';
import '../../../../core/common/app_bar_widget.dart';
import 'widgets/elevated_button_widget.dart';

class AccountSetup4 extends StatefulWidget {
  const AccountSetup4({super.key});

  @override
  State<AccountSetup4> createState() => _AccountSetup4State();
}

class _AccountSetup4State extends State<AccountSetup4> {
  final List<Map<String, String>> countries = [
    {"name": "France", "flag": "🇫🇷"},
    {"name": "Germany", "flag": "🇩🇪"},
    {"name": "Egypt", "flag": "🇪🇬"},
  ];

  Map<String, String>? selectedCountry;

  @override
  void initState() {
    super.initState();
    selectedCountry = countries.first; 
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorThemeExtension>()!;
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
             AccountSetupContentSec(
              text1: "Country of residence",
              text2: "This info needs to be accurate with your ID document.",
            ),
            const SizedBox(height: 16),
            const Text("Country", style: TextStyle(fontSize: 14)),
            const SizedBox(height: 8),
            DropdownButtonFormField<Map<String, String>>(
              value: selectedCountry,
              dropdownColor: Theme.of(context).scaffoldBackgroundColor,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1.5),
            ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              ),
              icon: const Icon(Icons.arrow_drop_down),
              items: countries
                  .map(
                    (country) => DropdownMenuItem<Map<String, String>>(
                      
                      value: country,
                      child: Row(
                        children: [
                          Text(country["flag"]!,style:  StyleManager.brand20Medium(context,colors.textColor)),
                          const SizedBox(width: 8),
                          Text(country["name"]!, style: StyleManager.brand16Medium(colors.textColor)),
                        ],
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedCountry = value;
                });
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar:  ElevatedButtonWidget(
        buttonColor: Color(0xff613DE4),
        textColor: Colors.white,
        onPressed: () {
        },
      ),
    );
  }
}
