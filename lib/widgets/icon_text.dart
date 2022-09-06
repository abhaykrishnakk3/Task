import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextAndIcon extends StatelessWidget {
  IconData icon;
  String name;
   TextAndIcon({Key? key,required this.icon,required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon)
        ,Text(name)
      ],
    );
  }
}