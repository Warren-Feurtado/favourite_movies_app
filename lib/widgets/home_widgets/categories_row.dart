import 'package:flutter/material.dart';

class CategoriesRow extends StatefulWidget {
  const CategoriesRow({super.key});

  @override
  State<CategoriesRow> createState() => _CategoriesRowState();
}

class _CategoriesRowState extends State<CategoriesRow> {
  final List<CategoriesEntry> categories = [
    const CategoriesEntry(1, 'All'),
    const CategoriesEntry(2, 'Action'),
    const CategoriesEntry(3, 'Adventure'),
    const CategoriesEntry(4, 'Comedy'),
    const CategoriesEntry(5, 'Drama'),
    const CategoriesEntry(6, 'Fantasy'),
    const CategoriesEntry(7, 'Horror'),
    const CategoriesEntry(8, 'Romance'),
    const CategoriesEntry(9, 'Sci-Fi'),
    const CategoriesEntry(10, 'Thriller')
  ];

  int? _value = 1;

  Iterable<Widget> get catFilterWidgets {
    return categories.map((cat) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: ChoiceChip(
          side: BorderSide(width: 1, color: Color.fromARGB(28, 255, 255, 255)),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 0, 0, 43),
          selectedColor: const Color.fromARGB(255, 255, 0, 0),
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          label: Text(
            cat.catName,
            style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 13),
          ),
          selected: _value == cat.id,
          onSelected: (bool selected) {
            setState(() {
              // selected = _value == cat.id;
              _value = cat.id;
            });
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      margin: const EdgeInsets.only(top: 10.0),
      height: 40,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: catFilterWidgets.toList()),
    );
  }
}

class CategoriesEntry {
  final int id;
  final String catName;
  const CategoriesEntry(this.id, this.catName);
}
