import 'package:flutter/material.dart';
import 'package:local_event_ui/app_state.dart';
import 'package:local_event_ui/models/category.dart';
import 'package:local_event_ui/styleguide.dart';
import 'package:provider/provider.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;

  CategoryWidget({required this.category});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    final isSelected = appState.selectedCategoryId == category.categoryId;

    return GestureDetector(
      onTap: () {
        appState.categorySelectionUpdate(category.categoryId);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: isSelected ? Colors.white : Color(0x99ffffff), width: 3),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              category.icon,
              color: !isSelected ? Colors.white : Color(0xffff4700),
              size: 40,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              category.name,
              style: isSelected ? selectedCategoryTextStyle : categoryTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
