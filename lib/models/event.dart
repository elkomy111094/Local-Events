class Event {
  final String imgPath,
      title,
      description,
      location,
      duration,
      punchLine1,
      punchLine2;

  final List? categoryIds, gallaryImages;

  Event(
      {required this.imgPath,
      required this.title,
      required this.description,
      required this.location,
      required this.duration,
      required this.punchLine1,
      required this.punchLine2,
      this.categoryIds,
      this.gallaryImages});
}

final runEvent = Event(
    imgPath: "assets/event_images/run.jpg",
    title: "5 kiloMeter DownTown Running",
    description: "",
    location: "Plesant Park",
    duration: "3H",
    punchLine1: "Marason",
    punchLine2: "The Latest Fad In Foodology,Get the Inside Scoup",
    categoryIds: [0, 1]);
final cookEvent = Event(
    imgPath: "assets/event_images/cooking_1.jpg",
    title: "Granite Cooking Class",
    description:
        "Guest list fill Up fast so be sure to apply before handto secure a spot",
    location: "Food Court Avenue",
    duration: "4H",
    punchLine1: "Granite Cooking",
    punchLine2: "The Latest Fad In Foodology,Get the Inside Scoup",
    categoryIds: [
      0,
      2
    ],
    gallaryImages: [
      "assets/event_images/cooking_2.jpg",
      "assets/event_images/cooking_3.jpg",
      "assets/event_images/cooking_4.jpg"
    ]);
final musicEvent = Event(
    imgPath: "assets/event_images/music.jpg",
    title: "Arijit Music Concert",
    description: "Listen to Arijit latest composition",
    location: "D.Y. patil staduim , Mumbai",
    duration: "5H",
    punchLine1: "Music Lovers",
    punchLine2: "The Latest Fad In Foodology,Get the Inside Scoup",
    categoryIds: [0, 1]);
final golfEvent = Event(
    imgPath: "assets/event_images/golf.jpg",
    title: "Season 2 Golf Estate",
    description: "",
    location: "NSIC Ground, Okhla",
    duration: "1d",
    punchLine1: "Golf",
    punchLine2: "The Latest Fad In Foodology,Get the Inside Scoup",
    categoryIds: [0, 3]);

final events = [runEvent, cookEvent, musicEvent, golfEvent];
