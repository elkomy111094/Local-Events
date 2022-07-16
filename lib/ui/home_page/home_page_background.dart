import 'package:flutter/material.dart';

class HomePageBackground extends StatelessWidget {
  final double screenHeight;
  HomePageBackground({required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return ClipPath(
      clipper: BottomShapeClipper(),
      child: Container(
        color: themeData.primaryColor,
        height: screenHeight * .6,
      ),
    );
  }
}

class BottomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartPoint = Offset(0, size.height * .85);
    Offset curveEndtPoint = Offset(size.width, size.height * .85);
    //path.lineTo(0, size.height * .85);
    path.lineTo(curveStartPoint.dx, curveEndtPoint.dy);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height * .85);
    path.lineTo(size.width, 0);
    // path.quadraticBezierTo(
    //     size.width / 4, size.height, curveEndtPoint.dx, curveEndtPoint.dy);
    /* path.lineTo(size.width, 0);*/

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
