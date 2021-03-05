import 'package:flutter/material.dart';

class NavBarRightButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Bishal\'s Account',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'Logout',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 5),
            SizedBox(
              width: 15,
              height: 15,
              child: Image(
                image: AssetImage('assets/images/logout.png'),
                color: Colors.redAccent,
              ),
            )
          ],
        ),
      ],
    );
  }
}
