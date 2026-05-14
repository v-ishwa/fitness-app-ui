import 'package:fitness_app_ui/models/category_model.dart';
import 'package:fitness_app_ui/models/diet_model.dart';
import 'package:fitness_app_ui/models/popular_diet_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];
  List<PopularDietModel> popularDiets = [];

  @override
  void initState() {
    super.initState();
    getInitialInfo();
  }

  void getInitialInfo() {
    categories = CategoryModel.getCategories();
    diets = DietModel.getDiets();
    popularDiets = PopularDietModel.getPopularDiets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Breakfast",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              "assets/icons/Arrow - Left 2.svg",
              height: 20,
              width: 20,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 36,
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(
                "assets/icons/dots.svg",
                height: 5,
                width: 5,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20, right: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff1D1617).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0,
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Pancake",
                hintStyle: TextStyle(color: Color(0xffDDDADA), fontSize: 14),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset("assets/icons/Search.svg"),
                ),
                suffixIcon: SizedBox(
                  width: 100,
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        VerticalDivider(
                          color: Colors.black,
                          indent: 12,
                          endIndent: 12,
                          thickness: 0.1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset("assets/icons/Filter.svg"),
                        ),
                      ],
                    ),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Category",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  separatorBuilder: (context, index) => SizedBox(width: 25),
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: categories[index].boxColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                categories[index].iconPath,
                              ),
                            ),
                          ),
                          Text(
                            categories[index].name,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Recommendation\nfor Diet",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 240,
                child: ListView.separated(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  separatorBuilder: (context, index) => SizedBox(width: 25),
                  scrollDirection: Axis.horizontal,
                  itemCount: diets.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 210,
                      decoration: BoxDecoration(
                        color: diets[index].boxColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(diets[index].iconPath),
                          Column(
                            children: [
                              Text(
                                diets[index].name,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "${diets[index].level} | ${diets[index].duration} | ${diets[index].calorie}",
                                style: TextStyle(
                                  color: Color(0xff7B6F72),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),

                          Container(
                            alignment: Alignment.center,
                            height: 45,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                colors: [
                                  diets[index].viewIsSelected
                                      ? Color(0xff9DCEFF)
                                      : Colors.transparent,
                                  diets[index].viewIsSelected
                                      ? Color(0xff92A3FD)
                                      : Colors.transparent,
                                ],
                              ),
                            ),
                            child: Text(
                              "View",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Popular",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                child: ListView.separated(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: popularDiets[index].boxIsSelected
                            ? Colors.white
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: popularDiets[index].boxIsSelected
                            ? [
                                BoxShadow(
                                  color: Color(0xff1D1617).withOpacity(0.07),
                                  offset: Offset(0, 7),
                                  blurRadius: 40,
                                  spreadRadius: 0,
                                ),
                              ]
                            : [],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SvgPicture.asset(
                              popularDiets[index].iconPath,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                popularDiets[index].name,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "${popularDiets[index].level} | ${popularDiets[index].duration} | ${popularDiets[index].calorie}",
                                style: TextStyle(
                                  color: Color(0xff7B6F72),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                              "assets/icons/button.svg",
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: popularDiets.length,
                  separatorBuilder: (context, index) => SizedBox(height: 25),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  // padding: EdgeInsets.only(left: 20, right: 20),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
