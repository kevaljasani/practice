import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: seven(),
  debugShowCheckedModeBanner: false,));
}

class seven extends StatefulWidget {
  const seven({super.key});

  @override
  State<seven> createState() => _sevenState();
}

class _sevenState extends State<seven> {

  int a=0;
  int a1=0;
  int b=0;
  int b1=0;
  int c=0;
  int c1=0;

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
                    child: InkWell(
                      onTap: () {

                        a=a1;
                        setState(() {

                        });
                      },
                      child: Icon(Icons.camera),
                    )
                  ),

                  Tab(
                    child: InkWell(
                      onTap: () {

                      },
                      child:  Icon(Icons.search),
                    ),
                  ),

                  Tab(
                    child: InkWell(
                      onTap: () {

                      },
                      child: Icon(Icons.remove),
                    ),
                  )
                ]),
          ),

          drawer: Drawer(
            child: ListView(children: [

              DrawerHeader(
                  child: UserAccountsDrawerHeader(
                      accountName: Text("test"),
                      accountEmail: Text("test1@gmail.com"))
              ),
              
              ListTile(
                title: Text("open"),
                trailing: InkWell(
                  onTap: () {

                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_forward_ios),
                )
              ),
              
              ListTile(
                title: Text("close"),
                trailing: InkWell(
                  onTap: () {

                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_forward_ios),
                ),
              )
            ],),
          ),

          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.camera),label: "camera",),
            BottomNavigationBarItem(icon: Icon(Icons.call),label: "call"),
            BottomNavigationBarItem(icon: Icon(Icons.image),label: "image")
          ]),

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
        color: Colors.indigo,
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
        color: Colors.teal,
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
        color: Colors.deepPurple,
      ),
    );
  }
}

