import 'package:flutter/material.dart';
import 'package:local_event_ui/app_state.dart';
import 'package:local_event_ui/models/category.dart';
import 'package:local_event_ui/models/event.dart';
import 'package:local_event_ui/ui/details_page/event_details_page.dart';
import 'package:provider/provider.dart';

import '../../styleguide.dart';
import 'category_widget.dart';
import 'event_widget.dart';
import 'home_page_background.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return ChangeNotifierProvider<AppState>(
      create: (_) => AppState(),
      child: Scaffold(
        body: Stack(
          children: [
            HomePageBackground(
              screenHeight: screenHeight,
            ),
            SafeArea(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Row(
                      children: [
                        Text(
                          "LOCAL EVENTS",
                          style: fadedTextStyle,
                        ),
                        Spacer(),
                        Icon(
                          Icons.person_outline,
                          size: 30,
                          color: Color(0x99ffffff),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 32.0),
                    child: Text(
                      "What's Up",
                      style: whiteHeadingTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: Consumer<AppState>(
                      builder: (context, state, _) => SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (final category in categories)
                              CategoryWidget(category: category)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Consumer<AppState>(
                      builder: (context, state, _) => Column(
                        children: [
                          for (final event in events.where((e) => e.categoryIds!
                              .contains(state.selectedCategoryId)))
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return EventDetailsPage(
                                    event: event,
                                  );
                                }));
                              },
                              child: EventWidget(
                                event: event,
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
