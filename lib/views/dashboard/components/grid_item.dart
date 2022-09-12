import 'package:flutter/cupertino.dart';
import '../../../helper/global_data.dart';

class GridItem extends StatelessWidget {
  final Map data;
  const GridItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(onPressed: (){}, padding: const EdgeInsets.all(5),child: Column(
      children: [
        Image.asset(data["icon"], height: 30,),
        const SizedBox(height: 5,),
        Text(data["label"], style: TextStyle(color: cs.primary, fontSize: 12),),
        const SizedBox(height: 5,),
        Text("${data["count"]}", style: TextStyle(color: cs.primary, fontSize: 18),)
      ],
    ),);
  }
}
