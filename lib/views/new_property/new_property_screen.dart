import 'package:flutter/material.dart';
import 'package:realtor_connect/helper/global_data.dart';
import 'package:realtor_connect/views/new_property/components/new_item_view.dart';
import 'package:realtor_connect/views/search/components/search_item_view.dart';

import '../../helper/assets.dart';

class NewPropertyScreen extends StatefulWidget {
  const NewPropertyScreen({Key? key}) : super(key: key);

  @override
  State<NewPropertyScreen> createState() => _NewPropertyScreenState();
}

class _NewPropertyScreenState extends State<NewPropertyScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  static var listTabData = [
    {"label": "Apartment", "icon": Assets.apartments},
    {"label": "Houses", "icon": Assets.houses},
    {"label": "Companies", "icon": Assets.companies},
    {"label": "Offices", "icon": Assets.offices},
    {"label": "Lands", "icon": Assets.lands}
  ];

  static var listViewData = [
    const NewItemView(),
    Container(),
    Container(),
    Container(),
    Container()
  ];

  @override
  void initState() {
    _tabController = TabController(length: listTabData.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cs.onPrimary,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: cs.primary,
        automaticallyImplyLeading: true,
        centerTitle: true,
        elevation: 0,
        title: Text("Post Property", style: TextStyle(color: cs.onPrimary)),
      ),
      body: SafeArea(
        child: Column(children: [
          // give the tab bar a height [can change hheight to preferred height]
          Container(
            height: 60,
            width: size.width,
            decoration: BoxDecoration(color: cs.onSecondaryContainer),
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              // give the indicator a decoration (color and border radius)
              indicator: BoxDecoration(
                color: cs.onSurface,
              ),
              labelColor: cs.onSecondary,
              unselectedLabelColor: cs.onSecondary,
              labelStyle: TextStyle(color: cs.onSecondary, fontSize: 12, fontWeight: FontWeight.w500),
              tabs: List.generate(
                  listTabData.length,
                      (index) => Tab(
                    text: listTabData[index]["label"],
                    icon: Image.asset(
                      "${listTabData[index]['icon']}",
                      height: 24,
                    ),
                  )),
            ),
          ),
          Expanded(child: TabBarView(
            controller: _tabController,
            children: listViewData,
          ))
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: cs.primary,
        child: Icon(Icons.add, color: cs.onPrimary,),
      ),
    );
  }
}
