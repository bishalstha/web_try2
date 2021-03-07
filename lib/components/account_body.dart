import 'package:flutter/material.dart';

import 'package:web_try2/components/info_usage.dart';
import 'package:web_try2/components/sims_info.dart';

class AccountBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 70,
        horizontal: 50,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: InfoUsage(),
          ),
          const SizedBox(width: 50),
          Expanded(
            flex: 1,
            child: SimsInfo(),
          ),
        ],
      ),
    );
  }
}
