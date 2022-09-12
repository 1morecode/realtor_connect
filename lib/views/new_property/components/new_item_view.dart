import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realtor_connect/helper/global_data.dart';

class NewItemView extends StatelessWidget {
  const NewItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        children: [
          // Available For
          const DropdownField(hint: "* Available For"),
          // Location
          Row(
            children: [
              Expanded(child: TextFormField(
                decoration: InputDecoration(
                    hintText: "* Location",
                    suffixIcon: Icon(
                      Icons.search, color: cs.onSecondaryContainer,),
                    hintStyle: TextStyle(
                        color: cs.onSurface,
                        fontWeight: FontWeight.w400,
                        fontSize: 14)),
              )),
              IconButton(onPressed: () {},
                  icon: Icon(CupertinoIcons.add_circled,
                    color: cs.onSecondaryContainer,))
            ],
          ),
          // Type
          const DropdownField(hint: "* Type"),
          // BHK
          TextFormField(
            decoration: InputDecoration(
                hintText: "* BHK",
                hintStyle: TextStyle(
                    color: cs.onSurface,
                    fontWeight: FontWeight.w400,
                    fontSize: 14)),
          ),
          // Furnishing
          const DropdownField(hint: "* Furnishing"),
          // Price
          TextFormField(
            decoration: InputDecoration(
                hintText: "* Price",
                hintStyle: TextStyle(
                    color: cs.onSurface,
                    fontWeight: FontWeight.w400,
                    fontSize: 14)),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "* Area",
                hintStyle: TextStyle(
                    color: cs.onSurface,
                    fontWeight: FontWeight.w400,
                    fontSize: 14)),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Society",
                suffixIcon: Icon(Icons.search, color: cs.onSecondaryContainer,),
                hintStyle: TextStyle(
                    color: cs.onSurface,
                    fontWeight: FontWeight.w400,
                    fontSize: 14)),
          ),
          // Floor
          const DropdownField(hint: "Floor"),
          // Parking
          const DropdownField(hint: "* Parking"),
          // Bathroom
          const DropdownField(hint: "* Bathroom"),
        ],
      ),
    );
  }
}

class DropdownField extends StatefulWidget {
  final String hint;
  const DropdownField({Key? key, required this.hint}) : super(key: key);

  @override
  State<DropdownField> createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
  late String dropdownValue;
  final list = [
    "Option 1",
    "Option 2",
    "Option 3",
    "Option 4",
    "Option 5",
    "Option 6",
    "Option 7",
  ];

  @override
  void initState() {
    dropdownValue = list.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 60,
      child: DropdownButton<String>(
        value: dropdownValue,
        dropdownColor: cs.onPrimary,
        isExpanded: true,
        hint: Text(widget.hint, style: TextStyle(
            color: cs.onSurface,
            fontWeight: FontWeight.w400,
            fontSize: 14),),
        icon: Icon(Icons.arrow_drop_down_rounded, color: cs.onSecondaryContainer,),
        elevation: 16,
        style: TextStyle(color: cs.onSecondaryContainer),
        underline: Container(
          height: 1,
          color: cs.onSurface,
        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

