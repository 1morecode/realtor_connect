import 'package:flutter/cupertino.dart';
import '../../../helper/global_data.dart';

class ListItem extends StatelessWidget {
  final Map data;
  const ListItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(onPressed: (){}, padding: const EdgeInsets.all(15),child: Row(
      children: [
        Image.asset(data["icon"], height: 24,),
        const SizedBox(width: 10,),
        Expanded(child: Text("${data["label"]}", style: TextStyle(color: cs.onSecondary, fontSize: 18, fontWeight: FontWeight.w400),))
      ],
    ),);
  }
}
