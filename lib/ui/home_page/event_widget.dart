import 'package:flutter/material.dart';
import 'package:local_event_ui/models/event.dart';
import 'package:local_event_ui/styleguide.dart';

class EventWidget extends StatelessWidget {
  final Event event;

  EventWidget({required this.event});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Card(
        elevation: 10,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  event.imgPath,
                  height: 120,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              event.title,
                              style: eventTitleTextStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            FittedBox(
                              child: Row(
                                children: [
                                  Icon(Icons.location_on),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    event.location,
                                    style: eventLocationTextStyle,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Center(
                            child: Text(
                          event.duration.toUpperCase(),
                          style: eventLocationTextStyle.copyWith(
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right,
                        ))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
