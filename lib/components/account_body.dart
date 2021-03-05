import 'package:flutter/material.dart';

import 'package:web_try2/components/info_usage.dart';

class AccountBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 70,
        horizontal: 50,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: InfoUsage(),
          ),
          const SizedBox(width: 50),
          Expanded(
            flex: 1,
            child: const Text('Test'),
          ),
        ],
      ),
    );
  }
}
