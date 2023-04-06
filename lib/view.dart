import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  final Razorpay _razorpay = Razorpay();

  @override
  void initState() {
    super.initState();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  _pay() {
    var options = {
      'key': 'Key here',
      'amount': 5000,
      'name': 'Uxdlab tech pvt ltd',
      'description': 'sample app',
      'timeout': 60,
      'prefill': {'contact': '9811002077', 'email': 'dhrubtech@gmail.com'}
    };
    _razorpay.open(options);
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    debugPrint('Success');
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    debugPrint('Failure');
  }

  void _handleExternalWallet(ExternalWalletResponse response) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            _pay();
          },
          child: const Text(
            'Razor Pay Integration',
          ),
        ),
      ),
    );
  }
}
