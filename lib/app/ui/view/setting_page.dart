import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/main_controller.dart';
import 'common/list_view_cell.dart';

class SettingPage extends GetView<MainController> {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          ListViewCell(
            listTitle: '프로필',
            listIcon: Icon(Icons.settings),
          ),
          ListViewCell(
            listTitle: '앱 설정',
            listIcon: Icon(Icons.settings),
          ),
          ListViewCell(
            listTitle: '로그아웃',
            listIcon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
