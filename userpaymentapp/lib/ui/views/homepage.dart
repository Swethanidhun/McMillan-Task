import 'package:flutter/material.dart';
import 'package:userpaymentapp/ui/viewmodels/Homeviewmodel.dart';
import 'package:userpaymentapp/ui/views/paymentdetails/paymentdetaild.dart';
import 'package:userpaymentapp/ui/widgets/appbar.dart';
import 'package:userpaymentapp/ui/widgets/circlebutton.dart';
import 'package:userpaymentapp/ui/widgets/toggleicon.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController pricecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: const MyAppBar(
          isClear: false,
        ),
        body: listBody());
  }

  listBody() {
    final homestore = HomeStore();
    Stack(
      children: [
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10.0, crossAxisSpacing: 10.0),
          itemCount: 9,
          padding: const EdgeInsets.all(20),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                return _paymentMetodDialog(context);
              },
              child: const Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [CircleAvatar(), Text("data")],
                ),
              ),
            );
          },
        ),
        CircleButton(
          height: 230,
          width: 22,
          icon: Icons.group,
          onTap: () {
            _addVisitorDialog(context);
          },
        ),
        CircleButton(
          height: 300,
          width: 22,
          icon: Icons.paid,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PaymentDetails(),
            ));
          },
        ),
      ],
    );
  }

  void _addVisitorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Colors.blue[50],
          title: const Center(child: Text("Enter Visitor Details")),
          content: IntrinsicHeight(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Enter visitor name",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Enter Sponser name",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Save'),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void _paymentMetodDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Colors.blue[50],
          title: const Column(
            children: [CircleAvatar(), Text("data")],
          ),
          content: IntrinsicHeight(
            child: Column(
              children: [
                const ToggleIcon(method: "UPI"),
                const ToggleIcon(method: "CASH"),
                const ToggleIcon(method: "LATER"),
                TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.white)),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Save'),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
