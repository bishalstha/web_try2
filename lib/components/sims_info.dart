import 'package:flutter/material.dart';

import 'package:web_try2/components/order_new_sim_button.dart';
import 'package:web_try2/components/sim_info.dart';

class SimsInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _topPart(),
        const SizedBox(height: 20),
        _simsList(),
      ],
    );
  }

  Row _topPart() {
    return Row(
      children: [
        const Text(
          'SIMs',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        OrderNewSimButton(),
      ],
    );
  }

  Column _simsList() {
    const double gapSize = 20;
    return Column(
      children: [
        SimInfo(
          isActive: true,
          name: 'Bishal',
          phone: '1234567890',
        ),
        const SizedBox(height: gapSize),
        SimInfo(
          hasUsedData: true,
          name: 'James',
          phone: '0987654321',
        ),
        const SizedBox(height: gapSize),
        SimInfo(
          name: 'Rita',
          phone: '9810987654',
        ),
      ],
    );
  }
}
