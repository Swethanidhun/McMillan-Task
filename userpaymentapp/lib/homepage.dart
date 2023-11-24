import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },),
     floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        appBar: AppBar(
          title: const Center(
              child: Text(
            "TODO",
            style: TextStyle(color: Colors.black),
          )),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10.0,crossAxisSpacing: 10.0),itemCount: 9,padding: EdgeInsets.all(20),itemBuilder: (context, index) {
          return const Card(
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                ),
                Text("data")
              ],
            ),
          );
        },)
        );
  }
}
