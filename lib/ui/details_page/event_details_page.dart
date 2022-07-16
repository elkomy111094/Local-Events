import 'package:flutter/material.dart';
import 'package:local_event_ui/models/event.dart';
import 'package:provider/provider.dart';

import 'event_details_background.dart';
import 'event_details_content.dart';

class EventDetailsPage extends StatelessWidget {
  final Event event;

  EventDetailsPage({required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider<Event>.value(
        value: event,
        child: Stack(
          fit: StackFit.expand,
          children: [
            EventDetailsBackground(),
            EventDetailsContent(),
          ],
        ),
      ),
    );
  }
}
