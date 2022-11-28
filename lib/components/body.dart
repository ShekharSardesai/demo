import 'package:ecommerce_design/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            'Women',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Catgories(),
      ],
    );
  }
}

class Catgories extends StatefulWidget {
  const Catgories({Key? key}) : super(key: key);

  @override
  State<Catgories> createState() => _CatgoriesState();
}

class _CatgoriesState extends State<Catgories> {
  int selectedIndex = 0;
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 25.0,
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildCategory(index),
        ));
  }

  Widget buildCategory(int index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text(
            categories[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color:selectedIndex==index? Colors.black: Colors.transparent,
            ),
          ),
          Container(
            height: 2,
            width: 30.0,
            color:selectedIndex==index? Colors.black: Colors.transparent,
          )
        ]),
      );
}
