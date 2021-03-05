import 'package:flutter/material.dart';

import 'package:web_try2/components/nav_bar.dart';
import 'package:web_try2/components/account_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
              AccountBody(),
            ],
          ),
        ),
      ),
    );
  }
}
