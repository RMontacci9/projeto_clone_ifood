import 'package:flutter/material.dart';
import 'package:ifood_flutter/core/theme/app_colors.dart';
import 'package:ifood_flutter/core/theme/app_typography.dart';
import 'package:ifood_flutter/views/app/app.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import 'components/header_local_component.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderLocationComponent(location: "Rua das Flores do Campo, 10 "),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 220),
            child: TabBar(
              labelPadding: EdgeInsets.zero,
              indicatorPadding: EdgeInsets.zero,
              labelColor: AppColors.black,
              unselectedLabelColor: AppColors.black54,
              labelStyle: AppTypograph.bodyText(context)
                  ?.copyWith(color: AppColors.black),
              indicator: MaterialIndicator(
                  color: AppColors.primaryColor,
                  height: 2,
                  bottomLeftRadius: 5,
                  bottomRightRadius: 5),
              controller: tabController,
              // indicatorColor: AppColors.primaryColor,
              // unselectedLabelColor: AppColors.primaryColor,
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Restaurantes"),
                  ),
                ),
                Tab(
                  child: Text("Mercados"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
