import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: six(),
  debugShowCheckedModeBanner: false,));
}

class six extends StatefulWidget {
  const six({super.key});

  @override
  State<six> createState() => _sixState();
}

class _sixState extends State<six> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(

          appBar: AppBar(
            actions: [
              PopupMenuButton(itemBuilder: (context) => [
                PopupMenuItem(child: Text("JAVA")),
                PopupMenuItem(child: Text("C")),
                PopupMenuItem(child: Text("DART")),
                PopupMenuItem(child: Text("C++")),
                PopupMenuItem(child: Text("FLUTTER")),
                PopupMenuItem(child: Text("PYTHON")),
              ],)
            ],
            bottom: TabBar(
                tabs: [

              Tab(
                child: Icon(Icons.camera),
              ),

              Tab(
                child: Icon(Icons.search),
              ),

              Tab(
                child: Icon(Icons.remove),
              )
            ]),
          ),

          body: TabBarView(children: [
            six1(),
            six2(),
            six3(),
          ]),
    ));
  }
}

class six1 extends StatefulWidget {
  const six1({super.key});

  @override
  State<six1> createState() => _six1State();
}

class _six1State extends State<six1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.orange,
      ),
    );
  }
}


class six2 extends StatefulWidget {
  const six2({super.key});

  @override
  State<six2> createState() => _six2State();
}

class _six2State extends State<six2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.yellow,
      ),
    );
  }
}

class six3 extends StatefulWidget {
  const six3({super.key});

  @override
  State<six3> createState() => _six3State();
}

class _six3State extends State<six3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.red,
      ),
    );
  }
}




