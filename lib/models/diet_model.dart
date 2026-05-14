import 'package:flutter/material.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool viewIsSelected;
  Color boxColor;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxColor,
    this.viewIsSelected = false,
  });

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(
      DietModel(
        name: "Honey Pancake",
        iconPath: "assets/icons/honey-pancakes.svg",
        level: "Easy ",
        duration: "30 min",
        calorie: "180kcal",
        viewIsSelected: false,
        boxColor: Color(0xff92A3FD),
      ),
    );
    diets.add(
      DietModel(
        name: "Honey Pancake",
        iconPath: "assets/icons/honey-pancakes.svg",
        level: "Easy ",
        duration: "30 min",
        calorie: "180kcal",
        viewIsSelected: true,
        boxColor: Color(0xffC58BF2),
      ),
    );
    diets.add(
      DietModel(
        name: "Honey Pancake",
        iconPath: "assets/icons/honey-pancakes.svg",
        level: "Easy ",
        duration: "30 min",
        calorie: "180kcal",
        viewIsSelected: true,
        boxColor: Color(0xff92A3FD),
      ),
    );
    diets.add(
      DietModel(
        name: "Honey Pancake",
        iconPath: "assets/icons/honey-pancakes.svg",
        level: "Easy ",
        duration: "30 min",
        calorie: "180kcal",
        viewIsSelected: true,
        boxColor: Color(0xffC58BF2),
      ),
    );

    return diets;
  }
}
