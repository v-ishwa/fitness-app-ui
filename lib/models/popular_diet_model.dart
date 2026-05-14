class PopularDietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool boxIsSelected;

  PopularDietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxIsSelected,
  });

  static List<PopularDietModel> getPopularDiets() {
    List<PopularDietModel> popularDiets = [];

    popularDiets.add(
      PopularDietModel(
        name: "Blueberry Pancake",
        iconPath: "assets/icons/blueberry-pancake.svg",
        level: "Easy ",
        duration: "30 min",
        calorie: "180kcal",
        boxIsSelected: true,
      ),
    );
    popularDiets.add(
      PopularDietModel(
        name: "Salmon Nigiri",
        iconPath: "assets/icons/salmon-nigiri.svg",
        level: "Easy ",
        duration: "30 min",
        calorie: "180kcal",
        boxIsSelected: true,
      ),
    );
    popularDiets.add(
      PopularDietModel(
        name: "Honey Pancake",
        iconPath: "assets/icons/honey-pancakes.svg",
        level: "Easy ",
        duration: "30 min",
        calorie: "180kcal",
        boxIsSelected: true,
      ),
    );
    return popularDiets;
  }
}
