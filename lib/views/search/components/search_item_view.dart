import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realtor_connect/helper/global_data.dart';

class SearchItemView extends StatefulWidget {
  const SearchItemView({Key? key}) : super(key: key);

  @override
  State<SearchItemView> createState() => _SearchItemViewState();
}

class _SearchItemViewState extends State<SearchItemView> {
  static RangeValues currentRangeValues = const RangeValues(0, 100);

  static String selectedRentSale = "Rent";
  static String selectedType = "Flat";
  static String selectedBHK = "1BHK";
  static String selectedFurnished = "Rent";

  static var rentSale = [
    "Rent", "Sale"
  ];
  static var type = [
    "Flat", "Panthouse", "Duplex", "Studio"
  ];
  static var bhk = [
    "1BHK", "2BHK", "3BHK", "4BHK", "5BHK", "6+BHK"
  ];
  static var furnishType = [
    "Unfurnished", "Fully Furnished", "Semi Furnished"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Wrap(
            spacing: 8.0, // gap between adjacent chips
            runSpacing: 4.0, // gap between lines
              alignment: WrapAlignment.center,
            children: List.generate(rentSale.length, (index) => CupertinoButton(onPressed: (){
              setState(() {
                selectedRentSale = rentSale[index];
              });
            }, padding: const EdgeInsets.all(0),child: Chip(
              label: Text(rentSale[index], style: TextStyle(color: cs.primary,)),
              backgroundColor: selectedRentSale == rentSale[index] ? cs.onSurface : cs.onPrimary,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: size.width*0.1),
              elevation: 0,
            ),))),
        ),
        Divider(color: cs.onSurface,),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Wrap(
              spacing: 8.0, // gap between adjacent chips
              runSpacing: 4.0, // gap between lines
              alignment: WrapAlignment.center,
              children: List.generate(type.length, (index) => CupertinoButton(onPressed: (){
                setState(() {
                  selectedType = type[index];
                });
              }, padding: const EdgeInsets.all(0),child: Chip(
                label: Text(type[index], style: TextStyle(color: cs.primary,)),
                backgroundColor: selectedType == type[index] ? cs.onSurface : const Color(0xFFFDF8F8),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                elevation: 0,
              ),))),
        ),
        Divider(color: cs.onSurface,),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Wrap(
              spacing: 8.0, // gap between adjacent chips
              runSpacing: 4.0, // gap between lines
              alignment: WrapAlignment.center,
              children: List.generate(bhk.length, (index) => CupertinoButton(onPressed: (){
                setState(() {
                  selectedBHK = bhk[index];
                });
              }, padding: const EdgeInsets.all(0),child: Chip(
                label: Text(bhk[index], style: TextStyle(color: cs.primary,)),
                shadowColor: Colors.transparent,
                backgroundColor: selectedBHK == bhk[index] ? cs.onSurface : const Color(0xFFFDF8F8),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                elevation: 0,
              ),))),
        ),
        Divider(color: cs.onSurface,),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Wrap(
              spacing: 8.0, // gap between adjacent chips
              runSpacing: 4.0, // gap between lines
              alignment: WrapAlignment.center,
              children: List.generate(furnishType.length, (index) => CupertinoButton(onPressed: (){
                setState(() {
                  selectedFurnished = furnishType[index];
                });
              }, padding: const EdgeInsets.all(0),child: Chip(
                label: Text(furnishType[index], style: TextStyle(color: cs.primary,)),
                shadowColor: Colors.transparent,
                backgroundColor: selectedFurnished == furnishType[index] ? cs.onSurface : const Color(0xFFFDF8F8),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                elevation: 0,
              ),))),
        ),
        Divider(color: cs.onSurface,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Price Range", style: TextStyle(fontSize: 14),),
              Text("8K", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
              Text("to", style: TextStyle(fontSize: 14),),
              Text("57L", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: RangeSlider(
            values: currentRangeValues,
            max: 100,
            divisions: 5,
            labels: RangeLabels(
              currentRangeValues.start.round().toString(),
              currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                currentRangeValues = values;
              });
            },
          ),
        )
      ],
    );
  }
}
