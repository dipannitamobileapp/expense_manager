import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopShape extends CustomClipper<Path> {

  final AnimationController _controller;
  TopShape._(this._controller);
  static Widget draw(Color color, String text,
      AnimationController controller) {
    return ClipPath(
      clipper: TopShape._(controller),
      child: ColoredBox(
        color: color,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Path getClip(Size size) {
    print("value of x: ${0/size.width}");
    print("value of y: ${250/400}");
    final path = Path();



    path.lineTo(0.0,

        Tween<double>(begin: 0, end:  size.height * 0.625)
            .animate(_controller)
            .value
    );

    // Second point
    path.cubicTo(size.width * 0.03333331333333333,
        Tween<double>(begin: 0, end:  size.height * 0.6842105263157895)
            .animate(_controller)
            .value,
        size.width * 0.1282051282051282,

        Tween<double>(begin: 0, end:  size.height * 0.5598086124401914)
            .animate(_controller)
            .value,
        size.width * 0.22564102564102564,

        Tween<double>(begin: 0, end:  size.height * 0.6650717703349283)
            .animate(_controller)
            .value);


    // third point
    path.cubicTo(size.width * 0.34358974359,

        Tween<double>(begin: 0, end:  size.height * 0.7942583732)
            .animate(_controller)
            .value,
        size.width * 0.3923076923,

        Tween<double>(begin: 0, end:  size.height * 0.81818181818)
            .animate(_controller)
            .value,
        size.width * 0.45128205128,

        Tween<double>(begin: 0, end:  size.height * 0.74641148325)
            .animate(_controller)
            .value,


    );

    //fourth point
    path.cubicTo(size.width * 0.5128205128205128,

        Tween<double>(begin: 0, end:  size.height * 0.6746411483253588)
            .animate(_controller)
            .value,

        size.width * 0.5692307692307692,
        Tween<double>(begin: 0, end:  size.height * 0.41626794258373206)
            .animate(_controller)
            .value,

        size.width * 0.6423076923076924,

        Tween<double>(begin: 0, end:  size.height * 0.5933014354066986)
            .animate(_controller)
            .value,


    );

    //fifth point
    path.cubicTo(
      size.width * 0.7153846153846154,

      Tween<double>(begin: 0, end:  size.height * 0.7703349282296651)
          .animate(_controller)
          .value,

      size.width * 0.7256410256410256,
      Tween<double>(begin: 0, end:  size.height)
          .animate(_controller)
          .value,
      size.width * 0.7871794871794872,
      Tween<double>(begin: 0, end:  size.height)
          .animate(_controller)
          .value,

    );

    //sixth point
    path.cubicTo(
      size.width * 0.8487179487179487,
      Tween<double>(begin: 0, end:  size.height)
          .animate(_controller)
          .value,
      size.width * 0.8974358974358975,

      Tween<double>(begin: 0, end:  size.height *  0.6220095693779905)
          .animate(_controller)
          .value,

      size.width,

      Tween<double>(begin: 0, end:  size.height *  0.7129186602870813)
          .animate(_controller)
          .value,

    );



    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

