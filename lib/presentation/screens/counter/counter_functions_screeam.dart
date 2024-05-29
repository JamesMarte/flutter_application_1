import 'package:flutter/material.dart';


class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCouter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
          actions: [
            IconButton(
          icon: const Icon(Icons.refresh_rounded ), 
          onPressed: () { 
            setState(() {
              clickCouter = 0;
            });
         },),

          ],
      ),
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
           children: [
             Text('$clickCouter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100 )),
             Text('Click${ clickCouter == 13 ? ' Mater':''}', style: const TextStyle(fontSize: 25))
           ],
          ),
        ),
        floatingActionButton: Column (
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
           CustomButton( 
            icon: Icons.refresh_rounded,
            onPressed: () {
              clickCouter = 0;
              setState(() {});
            },
          ),
           const SizedBox( height: 10),
           CustomButton(
             icon: Icons.exposure_minus_1_outlined,
             onPressed: () {
              if (  clickCouter == 0 ) return;
              clickCouter --;
              setState(() {});
            },
          ),
           const SizedBox( height: 10),
           CustomButton( 
            icon: Icons.plus_one,
            onPressed: () {
              clickCouter ++ ;
              setState(() {});
            },
          ),
        ],)
      );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
    final VoidCallback? onPressed;

  const CustomButton({
    super.key, 
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton (
      shape: const StadiumBorder (),
      enableFeedback: true,
      elevation: 6,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}