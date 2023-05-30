import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListViewCell extends StatelessWidget {
  final String listTitle;
  final Icon listIcon;
  const ListViewCell({
    required this.listTitle,
    required this.listIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: Icon(Icons.settings),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: Text(
            "설정들",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
