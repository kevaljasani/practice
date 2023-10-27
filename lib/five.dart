import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pratice2/second.dart';

void main()
{
  runApp(MaterialApp(home: five(),));
}

class five extends StatefulWidget {
  const five({super.key});

  @override
  State<five> createState() => _fiveState();
}

class _fiveState extends State<five> {

  bool t=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: Column(children: [
        Expanded(child: PageTransitionSwitcher(
          child: (t)?five2() : five3(),
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
            
          return SharedAxisTransition(
            child: child,
              animation: primaryAnimation, 
              secondaryAnimation: secondaryAnimation, 
              transitionType: SharedAxisTransitionType.horizontal);
        },)),

        Row(children: [
          ElevatedButton(onPressed: () {

            t=!t;
            setState(() {

            });
          }, child: Text("Submit"))
        ],)
      ],),
    );
  }
}

class five2 extends StatefulWidget {
  const five2({super.key});

  @override
  State<five2> createState() => _five2State();
}

class _five2State extends State<five2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("pic/photo1.jpg"),
    );
  }
}

class five3 extends StatefulWidget {
  const five3({super.key});

  @override
  State<five3> createState() => _five3State();
}

class _five3State extends State<five3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("pic/photo2.jpg"),
    );
  }
}

class five4 extends StatefulWidget {
  const five4({super.key});

  @override
  State<five4> createState() => _five4State();
}

class _five4State extends State<five4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("pic/photo3.jpg"),
    );
  }
}


