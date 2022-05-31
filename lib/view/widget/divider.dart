import 'package:flutter/material.dart';
class KDivider extends StatelessWidget {
  const KDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Divider(),
    );
  }
}
