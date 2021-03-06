import 'package:flutter/material.dart';

class UsageItem extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String subtitle;
  final Widget? child;

  const UsageItem({
    required this.imageAsset,
    required this.title,
    required this.subtitle,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: IntrinsicHeight(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              _top(),
              if (child != null) child!,
            ],
          ),
        ),
      ),
    );
  }

  Widget _top() {
    const double imageSize = 60;
    return Column(
      children: [
        SizedBox(
          width: imageSize,
          height: imageSize,
          child: Image(
            image: AssetImage(imageAsset),
            color: Colors.redAccent,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
