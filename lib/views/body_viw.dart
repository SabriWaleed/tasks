import 'package:flutter/material.dart';
import 'package:sec11/views/categories_view.dart';
class BodyView extends StatefulWidget {
  const BodyView({super.key});

  @override
  State<BodyView> createState() => _BodyViewState();
}

class _BodyViewState extends State<BodyView> {
  int selectedIndex = -1;

  final List<String> list = [
    "Hand Made",
    "Strass",
    "Shefoon",
    "Dantell",
    "Cotton",
    "Silk",
    "Velvet",
    "Lace",
    "Denim",
    "Leather",
    "Wool",
    "Satin",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            color: Colors.white70,
            child: Row(
              children: [
                ...List.generate(
                  list.length,
                  (index) => CategoriesView(
                    text: list[index],
                    isSelected: selectedIndex == index,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
