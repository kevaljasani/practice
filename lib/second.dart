import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pratice2/third.dart';

void main()
{
  runApp(MaterialApp(home: second(),));
}

class second extends StatefulWidget {

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {

  List images = ["img1.jpg", "img2.jpg", "img3.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: GridView.builder(
        itemCount: images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 2, crossAxisSpacing: 2),
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Navigator.push(context, third(two(images[index])) );
              },
              child: Hero(tag: "${images[index]}", child: Container(
                height: 200,
                width: 200,
                child: Image.asset("pic/${images[index]}"),
              ),)
            );
        },),
    );
  }
}

class two extends StatefulWidget {

  String images;
  two(this.images);

  @override
  State<two> createState() => _twoState();
}

class _twoState extends State<two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: Hero(tag: "${widget.images}", child: Image.asset("pic/${widget.images}"))
    );
  }
}