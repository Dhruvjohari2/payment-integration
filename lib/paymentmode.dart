import 'package:flutter/material.dart';
import 'package:razorpat_integration/view.dart';

class PaymentMode extends StatefulWidget {
  const PaymentMode({Key? key}) : super(key: key);

  @override
  State<PaymentMode> createState() => _PaymentModeState();
}

class _PaymentModeState extends State<PaymentMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const View(),
                  ),
                );
              },
              child: const Text('Razor pay integration'),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const View(),
                  ),
                );
              },
              child: const Text(''
                  'Stripe integration'),
            ),
          ),
        ],
      ),
    );
  }
}
