import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pratice2/second.dart';

class third extends PageRoute {

  Widget two;
  third(this.two);

  @override
  // TODO: implement barrierColor
  Color? get barrierColor => Colors.orange;

  @override
  // TODO: implement barrierLabel
  String? get barrierLabel => "testing";

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    // TODO: implement buildPage
    return FadeTransition(opacity: animation,child: two,);
  }

  @override
  // TODO: implement maintainState
  bool get maintainState => true;

  @override
  // TODO: implement transitionDuration
  Duration get transitionDuration => Duration(seconds: 5);
}
