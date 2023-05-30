import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../controller/main_controller.dart';
import 'common/bottom_nav_bar.dart';
import 'common/list_view_cell.dart';

class SettingPage extends GetView<MainController> {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          ListViewCell(
            listTitle: 'title',
            listIcon: Icon(Icons.settings),
          ),
          ListViewCell(
            listTitle: 'title',
            listIcon: Icon(Icons.settings),
          ),
          ListViewCell(
            listTitle: 'title',
            listIcon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
