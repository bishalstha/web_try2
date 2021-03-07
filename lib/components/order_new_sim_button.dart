import 'package:flutter/material.dart';

class OrderNewSimButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
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
      child: Row(
        children: [
          const Text(
            'Order new SIM',
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 15,
            ),
          ),
          const SizedBox(width: 5),
          const SizedBox(
            width: 15,
            height: 15,
            child: Image(
              image: AssetImage('assets/images/cart.png'),
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
