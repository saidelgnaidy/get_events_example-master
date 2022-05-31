import 'package:flutter/material.dart';


class IconAndValue extends StatelessWidget {
  const IconAndValue({Key? key, this.icon, required this.title}) : super(key: key);
  final IconData? icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color:Theme.of(context).textTheme.subtitle2?.color,
          size: 20,
        ),
        const SizedBox(
          width: 10,
        ),
        Text( title,style: Theme.of(context).textTheme.subtitle2, ),
      ],
    );
  }
}
