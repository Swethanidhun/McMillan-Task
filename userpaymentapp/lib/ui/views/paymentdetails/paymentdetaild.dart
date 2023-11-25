import 'package:flutter/material.dart';
import 'package:userpaymentapp/ui/widgets/appbar.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        isClear: true,
      ),
      floatingActionButton:FloatingActionButton(onPressed: () {
        
      },child: Icon(Icons.share)) ,
      
    );
  }
}
