import 'package:flutter/material.dart';
import 'package:local_event_ui/models/event.dart';
import 'package:provider/provider.dart';

class EventDetailsBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final event = Provider.of<Event>(context);

    return Align(
      alignment: Alignment.topCenter,
      child: ClipPath(
        clipper: ImageClipper(),
        child: Image.asset(
          event.imgPath,
          fit: BoxFit.cover,
          width: screenWidth,
          height: screenHeight * .5,
          color: Color(0x99000000),
          colorBlendMode: BlendMode.darken,
        ),
      ),
    );
  }
}

class ImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartPoint = Offset(0, 75);
    Offset curveEndPoint = Offset(size.width, size.height);
    path.lineTo(0, 75);
    path.quadraticBezierTo(
        size.width * .2, size.height, curveEndPoint.dx, curveEndPoint.dy);

    path.lineTo(size.width, 0);

    path.close();

    /* path.lineTo(size.width, 0);*/

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
