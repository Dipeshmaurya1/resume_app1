import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.teal.shade300,
        title: Text(
          'Resume Builder',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.cloud,
              color: Colors.white,
              weight: 30,
              size: 40,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Select/Add Profile',
                style: TextStyle(fontSize: 20,color: Colors.teal.shade300,fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/contact');
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.add_circle_outline_outlined,size: 50,color: Colors.white,),
                    color: Colors.teal.shade300,
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
