import 'package:flutter/material.dart';
import 'package:userpaymentapp/data/models/paymentmodel.dart';
import 'package:userpaymentapp/ui/viewmodels/Homeviewmodel.dart';
import 'package:userpaymentapp/ui/widgets/appbar.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
    final homestore = HomeStore();
    final paydetails = PaymentDetailsModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        isClear: true,
      ),
      floatingActionButton:FloatingActionButton(onPressed: () {
        
      },child: const Icon(Icons.share)) ,
      body:   Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Payments",style: TextStyle(fontWeight: FontWeight.bold),),
                Text("Attendance",style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            Expanded(child: ListView.builder(itemCount:homestore.paymentlist.length,itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("${paydetails.name}"),
                      Text("${paydetails.price} \n - ${paydetails.method}")

                    ],
                  ),
                  Column(
                    children: [
                      Text("${paydetails.name}"),
                      Text("${paydetails.time}")
                    ],
                  )
                ],
              );
            },))
          ],
        ),
      ),
    );
  }
}
