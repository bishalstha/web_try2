import 'package:flutter/material.dart';
import 'package:web_try2/components/progress_bar.dart';
import 'package:web_try2/components/usage_item.dart';

class InfoUsage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _title(),
        const SizedBox(height: 20),
        _body(),
      ],
    );
  }

  Row _title() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Usage Information',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          '14.12.257',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  Container _body() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 1,
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          _bodyItems(),
          const SizedBox(height: 20),
          _bottomLink(),
        ],
      ),
    );
  }

  IntrinsicHeight _bodyItems() {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _item1(),
          _itemDivider(),
          UsageItem(
            imageAsset: 'assets/images/phone.png',
            title: '0 \$',
            subtitle: 'Calls and messages',
          ),
          _itemDivider(),
          UsageItem(
            imageAsset: 'assets/images/pay.png',
            title: '0 \$',
            subtitle: 'Additional paid services',
          ),
        ],
      ),
    );
  }

  Center _itemDivider() {
    return Center(
      child: Container(
        height: 200,
        width: 1,
        color: Colors.grey.shade300,
      ),
    );
  }

  UsageItem _item1() {
    return UsageItem(
      imageAsset: 'assets/images/db.png',
      title: '14.2 GB',
      subtitle: 'Data used',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          const Text(
            '4 GB data',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Text(
                '1.4 GB used',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              const Text(
                '4 GB',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const ProgressBar(
            value: 1.4 / 4,
            height: 13,
          ),
          const SizedBox(height: 30),
          const Text(
            'Unlimited data',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            '1.4 GB used',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Row _bottomLink() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          'Breakdown by billing period',
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 13,
          ),
        ),
        const SizedBox(width: 5),
        const SizedBox(
          width: 10,
          height: 10,
          child: Image(
            image: AssetImage('assets/images/chevron-right.png'),
            color: Colors.redAccent,
          ),
        ),
      ],
    );
  }
}
