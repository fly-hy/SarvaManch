import 'package:flutter/material.dart';
import 'package:sarva_munch/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SarvaManch"),
        backgroundColor: MyTheme.color5,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: MyTheme.color4,
        child: Column(),
      ),
    );
  }
}
