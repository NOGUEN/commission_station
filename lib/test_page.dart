import 'package:flutter/material.dart';
import 'app/ui/view/common/grid_card_view_widget.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Commission Station'),
      ),
      body: GridCardViewWidget(),
    );
  }
}
