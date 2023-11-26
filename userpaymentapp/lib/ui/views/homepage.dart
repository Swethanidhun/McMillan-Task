import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:userpaymentapp/ui/viewmodels/Homeviewmodel.dart';
import 'package:userpaymentapp/ui/views/paymentdetails/paymentdetaild.dart';
import 'package:userpaymentapp/ui/widgets/appbar.dart';
import 'package:userpaymentapp/ui/widgets/circlebutton.dart';
import 'package:userpaymentapp/ui/widgets/textfield.dart';
import 'package:userpaymentapp/ui/widgets/toggleicon.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final homestore = HomeStore();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homestore.fetchUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: const MyAppBar(
          isClear: false,
        ),
        body: Stack(
          children: [
            Observer(builder: (context) {
              final userlist = homestore.userlist;

              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0),
                itemCount: userlist.length,
                padding: const EdgeInsets.all(20),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      return _paymentMetodDialog(context, index);
                    },
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "${userlist[index].picture!.medium}"),
                          ),
                          Text("${userlist[index].name!.first}")
                        ],
                      ),
                    ),
                  );
                },
              );
            }),
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
        ));
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
                TextFields(
                  hinttext: "Enter Visitor Name",
                  icon: const Icon(Icons.person),
                  controllers: homestore.visitorcontroller,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFields(
                    hinttext: "Enter Sponser Name",
                    icon: const Icon(Icons.person),
                    controllers: homestore.sponsercontroller),
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

  void _paymentMetodDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Colors.blue[50],
          title: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "${homestore.userlist[index].picture!.medium}"),
              ),
              Text("${homestore.userlist[index].name!.first}")
            ],
          ),
          content: IntrinsicHeight(
            child: Column(
              children: [
                const ToggleIcon(method: "UPI"),
                const ToggleIcon(method: "CASH"),
                const ToggleIcon(method: "LATER"),
                TextFields(controllers: homestore.pricecontroller),
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
