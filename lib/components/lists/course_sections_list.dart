import 'package:code_design/components/cards/course_sections_card.dart';
import 'package:code_design/model/course.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class CourseSectionList extends StatelessWidget {
  const CourseSectionList({Key? key}) : super(key: key);

  List<Widget> courseSectionsWidget() {
    List<Widget> cards = [];
    for (var course in courseSections) {
      cards.add(
        Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: CourseSectionCard(
            course: course,
          ),
        ),
      );
    }
    cards.add(
      Padding(
        padding: EdgeInsets.only(top: 12.0),
        child: Text(
          ""
          "No more Sections to view, look\nfor more in our couırses",
          style: kCaptionLabelStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );

    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: courseSectionsWidget(),
    ));
  }
}
