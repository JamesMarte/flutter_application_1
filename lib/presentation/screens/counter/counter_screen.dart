import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCouter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
        body: Center(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center ,
           children: [
             Text('$clickCouter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100 )),
             Text('Click${ clickCouter == 1 ? '':'s'}', style: const TextStyle(fontSize: 25))
           ],
          ),
        ),
        floatingActionButton: FloatingActionButton (
          onPressed: () {
            clickCouter =clickCouter + 1;
            setState(() {});
          },
          child: const Icon(Icons.plus_one),
        ),
      );
  }
}