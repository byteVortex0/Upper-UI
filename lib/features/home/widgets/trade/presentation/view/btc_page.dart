import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:upper/core/utils/fonts/style_manager.dart';
import 'package:upper/features/home/widgets/trade/presentation/view/widgets/build_middle_widget.dart';

import '../../../build_bottom_nav_for_tab.dart';
import '../../../header.dart';
import '../view_models/btc_viewmodel.dart';
import 'widgets/candel_chart.dart';

class BtcPage extends StatefulWidget {
  const BtcPage({super.key});

  @override
  State<BtcPage> createState() => _BtcPageState();
}

class _BtcPageState extends State<BtcPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  double _sliderValue = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  int _bottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ChartViewModel(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(Icons.arrow_back, color: Colors.black),
        ),

        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "BTC/USDT",
                    style: StyleManager.brand20Medium(
                      context,
                    ).copyWith(color: Colors.black),
                  ),
                  Text(
                    "GMT+3",
                    style: StyleManager.brand20Medium(
                      context,
                    ).copyWith(color: Colors.black),
                  ),
                ],
              ),
            ),

            //trending chart
            ChartWidget(),
            const SizedBox(height: 8),
            Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[200],
              ),
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.green,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const [Tab(text: "Buy BTC"), Tab(text: "Sell BTC")],
              ),
            ),

            // Tab content
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [_buildForm("Buy"), _buildForm("Sell")],
              ),
            ),
          ],
        ),
        floatingActionButton:
            _bottomIndex == 0
                ? FloatingActionButton(
                  onPressed: () {},
                  child: buildMiddleButton(() {}),
                )
                : null,

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: buildBottomNavForTab(
          selectedIndex: _bottomIndex,
          context: context,
          onItemTapped: (int index) {
            setState(() {
              _bottomIndex = index;
            });
          },
        ),
      ),
    );
  }

  Widget _buildForm(String action) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
            ),
            value: "Limit Order",
            items: const [
              DropdownMenuItem(
                value: "Limit Order",
                child: Text("Limit Order"),
              ),
              DropdownMenuItem(
                value: "Market Order",
                child: Text("Market Order"),
              ),
            ],
            onChanged: (val) {},
          ),

          const SizedBox(height: 12),

          TextFormField(
            decoration: const InputDecoration(
              labelText: "Price",
              suffixText: "36 478,1 USDT",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "Approximate Cost 2 561 930.0 ₽",
            style: StyleManager.white16Medium.copyWith(
              color: Colors.black,
              fontSize: 15.sp,
            ),
          ),
          const SizedBox(height: 12),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Sum",
              suffixText: "Min 0.00001 BTC",
              suffixStyle: StyleManager.brand16Medium.copyWith(
                color: Colors.grey,
              ),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 12),

          Slider(
            value: _sliderValue,
            min: 0,
            max: 100,
            divisions: 4,
            thumbColor: Colors.purple,
            label: "${_sliderValue.round()}%",
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Total",
              suffixText: "USDT",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 12),

          Text(
            "Available: 0 USDT",
            style: StyleManager.white16Medium.copyWith(color: Colors.black),
          ),
          Text(
            "Max. Limit: 0 BTC",
            style: StyleManager.white16Medium.copyWith(color: Colors.black),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: action == "Buy" ? Colors.green : Colors.red,
              minimumSize: const Size(double.infinity, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            child: Text("$action BTC", style: StyleManager.white16Medium),
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
