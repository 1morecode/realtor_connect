import 'package:flutter/material.dart';
import 'package:realtor_connect/helper/global_data.dart';
import 'package:realtor_connect/helper/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:realtor_connect/views/dashboard/components/grid_item.dart';
import 'package:realtor_connect/views/dashboard/components/list_item.dart';
import 'package:realtor_connect/views/new_property/new_property_screen.dart';
import 'package:realtor_connect/views/search/search_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  static var gridData = [
    {"label": "Companies", "icon": Assets.companies, "count": 42},
    {"label": "Agents", "icon": Assets.companies, "count": 45},
    {"label": "Apartments", "icon": Assets.apartments, "count": 1257},
    {"label": "Houses", "icon": Assets.houses, "count": 326},
    {"label": "Lands", "icon": Assets.lands, "count": 124},
    {"label": "Offices", "icon": Assets.offices, "count": 222}
  ];

  static var listData = [
    {"label": "Search By ID", "icon": Assets.offices},
    {"label": "My Properties", "icon": Assets.companies},
    {"label": "My Requirements", "icon": Assets.apartments},
    {"label": "GAR Requirements", "icon": Assets.houses},
    {"label": "Notification", "icon": Assets.lands},
    {"label": "Important Contacts", "icon": Assets.offices}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cs.primary,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [cs.primary, cs.onSurface],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 45,
                ),

                /// Titlt
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    Assets.logo,
                    height: 40,
                  ),
                ),

                /// Toolbar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const NewPropertyScreen(),));
                      },
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Icon(
                            CupertinoIcons.plus,
                            size: 32,
                            color: cs.onPrimary,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Post",
                            style: TextStyle(color: cs.onPrimary, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(color: cs.onPrimary, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "TeamAasma",
                          style: TextStyle(
                              color: cs.onPrimary,
                              fontSize: 21,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    CupertinoButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen(),));
                      },
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            size: 32,
                            color: cs.onPrimary,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Search",
                            style: TextStyle(color: cs.onPrimary, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),

                /// Body
                SizedBox(
                  width: size.width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 15, bottom: 5),
                            child: Text("Dashboard"),
                          ),
                          GridView.count(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.all(20),
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 3,
                            children: List.generate(gridData.length,
                                (index) => GridItem(data: gridData[index])),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      ListItem(data: listData[index]),
                  itemCount: listData.length,
                  separatorBuilder: (context, index) => Divider(color: cs.onSecondary,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
