import 'package:flutter/material.dart';


class CostWidget extends StatelessWidget {
  const CostWidget({
    Key? key, required this.text, required this.value,
  }) : super(key: key);
 final String text ;
 final String value ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
         text,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
         value,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}
