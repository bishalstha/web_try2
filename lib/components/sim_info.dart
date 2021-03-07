import 'package:flutter/material.dart';

class SimInfo extends StatelessWidget {
  final bool isActive;
  final bool hasUsedData;
  final String name;
  final String phone;

  const SimInfo({
    Key? key,
    this.isActive = false,
    this.hasUsedData = false,
    required this.name,
    required this.phone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Row mainBody = _mainBody();
    return isActive ? _activeWrapper(mainBody) : _inactiveWrapper(mainBody);
  }

  Container _activeWrapper(Widget child) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.redAccent,
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            alignment: Alignment.center,
            color: Colors.redAccent,
            child: const Text(
              'Activate Subscription',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            color: Colors.white,
            child: child,
          ),
        ],
      ),
    );
  }

  Container _inactiveWrapper(Widget child) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
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
      child: child,
    );
  }

  Row _mainBody() {
    const double imageSize = 40;
    return Row(
      children: [
        const SizedBox(
          width: imageSize,
          height: imageSize,
          child: Image(
            image: AssetImage('assets/images/euro.png'),
            color: Colors.redAccent,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              phone,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        const Spacer(),
        if (hasUsedData)
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '1.3 GB',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                'data used',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
