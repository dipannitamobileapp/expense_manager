import 'package:expense_manager/components/animated_shape/top_shape.dart';
import 'package:flutter/material.dart';

class AnimatedShape extends StatefulWidget {

  final Color color;
  final bool show;
  final String title;
   AnimatedShape({super.key,
   required this.color,
     required this.show,
     required this.title
   });

  @override
  State<AnimatedShape> createState() => _AnimatedShapeState();
}

class _AnimatedShapeState extends State<AnimatedShape> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this,
    duration: Duration(milliseconds: 800)
    )..forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  void didUpdateWidget(covariant AnimatedShape oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    widget.show ? _animationController.reverse(): _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 209,
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (_, __){
          return TopShape.draw(widget.color,
              widget.title, _animationController);}
      ),
    );
  }

}
