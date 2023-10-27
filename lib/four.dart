import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: four(),));
}

class four extends StatefulWidget {
  const four({super.key});

  @override
  State<four> createState() => _fourState();
}

class _fourState extends State<four> {

  List images = ["img1.jpg", "img2.jpg", "img3.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: GridView.builder(
        itemCount: images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,mainAxisSpacing: 2,crossAxisSpacing: 2),
          itemBuilder: (context, index) {

            return OpenContainer(
              transitionDuration: Duration(seconds: 4),
                transitionType: ContainerTransitionType.fade,
                openColor: Colors.yellow,
                closedBuilder: (context, action) {

                  return Container(
                    height: 100,
                    width:double.infinity,
                    child: Image.asset("pic/${images[index]}"),
                  );},

                openBuilder: (context, action) {
                  return second(images[index]);
                },);
          },),
    );
  }
}

class second extends StatefulWidget {

  String images;
   second(this.images);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

         body: Hero(tag: "${widget.images}", child: Image.asset("pic/${widget.images}"))
    );
  }
}

