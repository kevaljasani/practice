import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: first(),));
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  
  double h =200;
  double w =200;
  bool t =false;
  Color c=Colors.orange;
  double op=0.3;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(),
      
      body: Column(children: [
        AnimatedContainer(
          duration: Duration(seconds: 3),
          height: h,
          width: w,
          color: c,
        ),

        // AnimatedOpacity(opacity: op, duration: Duration(seconds: 1),
        // child: Container(
        //   height: h,
        //   width: w,
        //   color: c,
        // ),),

        ElevatedButton(onPressed: () {

          if(t)
            {
              h=100;
              w=100;
              c=Colors.yellow;
              op=0.3;
            }
          else
            {
              h=200;
              w=200;
              Colors.red;
              op=0.7;
            }

          t=!t;
          setState(() {

          });
        }, child: Text("Submit"))
      ],
      ),
    );
  }
}
