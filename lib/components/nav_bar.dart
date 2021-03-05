import 'package:flutter/material.dart';
import 'package:web_try2/components/nav_bar_right_button.dart';

class NavBarText extends StatelessWidget {
  final String title;
  final String imageAsset;
  final bool isActive;

  NavBarText({
    @required this.title,
    @required this.imageAsset,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    final double imageSize = 40;
    final Color color = isActive ? Colors.redAccent : Colors.grey;
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(bottom: 5),
            width: imageSize,
            height: imageSize,
            child: Image(
              image: AssetImage(imageAsset),
              color: color,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: 15,
            ),
          ),
          const Spacer(),
          if (isActive)
            Container(
              width: 75,
              height: 4,
              color: color,
            ),
        ],
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => constraints.maxWidth > 750
          ? _navForBigScreen()
          : _navForSmallScreen(),
    );
  }

  Widget _navForBigScreen() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      height: 80,
      color: const Color(0xFFF0F0F0),
      child: Row(
        children: [
          SizedBox(
            width: 70,
            height: 58,
            child: Image(image: AssetImage('assets/images/logo.png')),
          ),
          const Spacer(),
          NavBarText(
            title: 'Account',
            imageAsset: 'assets/images/sim.png',
            isActive: true,
          ),
          NavBarText(
            title: 'Invoices',
            imageAsset: 'assets/images/bill.png',
          ),
          NavBarText(
            title: 'Contact Us',
            imageAsset: 'assets/images/customer-service.png',
          ),
          NavBarText(
            title: 'Information',
            imageAsset: 'assets/images/chat.png',
          ),
          const Spacer(),
          NavBarRightButton(),
        ],
      ),
    );
  }

  Widget _navForSmallScreen() {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      color: const Color(0xFFF0F0F0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 70,
            height: 58,
            child: Image(image: AssetImage('assets/images/logo.png')),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 80,
            child: NavBarText(
              title: 'Account',
              imageAsset: 'assets/images/sim.png',
              isActive: true,
            ),
          ),
          SizedBox(
            height: 80,
            child: NavBarText(
              title: 'Invoices',
              imageAsset: 'assets/images/bill.png',
            ),
          ),
          SizedBox(
            height: 80,
            child: NavBarText(
              title: 'Contact Us',
              imageAsset: 'assets/images/customer-service.png',
            ),
          ),
          SizedBox(
            height: 80,
            child: NavBarText(
              title: 'Information',
              imageAsset: 'assets/images/chat.png',
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: NavBarRightButton(),
          ),
        ],
      ),
    );
  }
}
