import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
class CheckoutWithKhalti extends StatefulWidget {
  const CheckoutWithKhalti({super.key});

  @override
  State<CheckoutWithKhalti> createState() => _CheckoutWithKhaltiState();
}

class _CheckoutWithKhaltiState extends State<CheckoutWithKhalti> {
  String referenceId = "";
  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
       publicKey: 'test_public_key_bcd503bbc53241dabd345889c9474b79',
       enabledDebugging: true,
      builder: (context, navkey) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: const Text("Khalti Payment"),
            ),
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        payWithKhaltiInApp();
                      
                      },
                      child: const Text("Pay with Khalti")),
                  Text(referenceId)
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  payWithKhaltiInApp() {
    KhaltiScope.of(context).pay(
      config: PaymentConfig(
        amount: 1000,
        productIdentity: 'Product Id',
        productName: 'Product Name',
        mobileReadOnly: false,
      ),
      preferences: [
        PaymentPreference.khalti,
        
      ],
      onSuccess: onSuccess,
      onFailure: onFailure,
      onCancel: onCancel,
    );
  }

  void onSuccess(PaymentSuccessModel success) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Payment Successful'),
      
          actions: [
            SimpleDialogOption(
                child: const Text('OK'),
                onPressed: () {
                  setState(() {
                    referenceId = success.idx;
                  });

                  Navigator.pop(context);
                })
          ],
        );
      },
    );
  }

  void onFailure(PaymentFailureModel failure) {
    debugPrint(
      failure.toString(),
    );
  }

  void onCancel() {
    debugPrint('Cancelled');
  }
}