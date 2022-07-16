import 'package:flutter/material.dart';
import 'package:local_event_ui/models/event.dart';
import 'package:local_event_ui/models/guest.dart';
import 'package:local_event_ui/styleguide.dart';
import 'package:provider/provider.dart';

class EventDetailsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = Provider.of<Event>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * .25),
                  child: Text(
                    event.title,
                    style: eventWhiteTitleTextStyle.copyWith(
                        color: Color(0xbbff4700)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * .25),
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text(
                          "-",
                          style: eventLocationTextStyle.copyWith(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          event.location,
                          style: eventLocationTextStyle.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              "GUESTS",
              style: guestTextStyle.copyWith(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (final guest in guests)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipOval(
                      child: Image.asset(
                        guest.imagePath,
                        fit: BoxFit.cover,
                        width: 90,
                        height: 90,
                      ),
                    ),
                  )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(text: event.punchLine1, style: punshLine1TextStyle),
                TextSpan(text: "!", style: punshLine1TextStyle),
                TextSpan(text: event.punchLine2, style: punshLine2TextStyle),
              ]),
            ),
          ),
          (event.description.isNotEmpty)
              ? Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    event.description,
                    style: eventLocationTextStyle,
                  ),
                )
              : SizedBox(),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Galary",
              style: guestTextStyle.copyWith(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          event.gallaryImages != null
              ? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (String gallary in event.gallaryImages!)
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 150,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage(
                                    gallary,
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        )
                    ],
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
