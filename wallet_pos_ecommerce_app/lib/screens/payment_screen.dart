import 'package:flutter/material.dart';
import 'package:stripe_payment/stripe_payment.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  void initState() {
    super.initState();
    StripePayment.setOptions(
      StripeOptions(
        publishableKey: "pk_test_12345", // Add your Stripe publishable key here
        merchantId: "Test",
        androidPayMode: 'test',
      ),
    );
  }

  void startPayment() {
    StripePayment.paymentRequestWithCardForm(
      CardFormPaymentRequest(),
    ).then((paymentMethod) {
      // Handle payment success
    }).catchError((e) {
      // Handle payment error
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Visa Card Payment')),
      body: Center(
        child: ElevatedButton(
          onPressed: startPayment,
          child: Text('Pay with Visa'),
        ),
      ),
    );
  }
}
