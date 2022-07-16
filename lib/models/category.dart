import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category({required this.categoryId, required this.name, required this.icon});
}

//Create my Categories items
final allCategories = Category(categoryId: 0, name: "All", icon: Icons.search);
final musicCategory =
    Category(categoryId: 1, name: "Music", icon: Icons.music_note);
final meetUpCategory =
    Category(categoryId: 2, name: "MeetUp", icon: Icons.location_on);
final birthdayCategory =
    Category(categoryId: 4, name: "BirthDay", icon: Icons.cake);
final golfCategory =
    Category(categoryId: 3, name: "Golf", icon: Icons.golf_course);

// put Categories items In List of Categories Items

final categories = [
  allCategories,
  musicCategory,
  meetUpCategory,
  birthdayCategory,
  golfCategory,
];
