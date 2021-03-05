import 'package:flutter/material.dart';

import 'package:web_try2/components/nav_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF404040),
      body: SafeArea(
        child: Column(
          children: [
            NavBar(),
          ],
        ),
      ),
    );
  }
}
