import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:userpaymentapp/ui/widgets/circlebutton.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue[50],
        appBar: AppBar(
          title: const Center(
              child: Text(
            "TODO",
            style: TextStyle(color: Colors.black),
          )),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Stack(
          children: [
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0),
              itemCount: 9,
              padding: const EdgeInsets.all(20),
              itemBuilder: (context, index) {
                return const Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [CircleAvatar(), Text("data")],
                  ),
                );
              },
            ),
            CircleButton(
              height: 230,
              width: 22,
              icon: Icons.group,
            ),
            CircleButton(
              height: 300,
              width: 22,
              icon: Icons.paid,
            ),
          ],
        ));
  }
}
