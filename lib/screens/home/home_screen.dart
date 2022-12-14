import 'package:ecommerce_design/components/body.dart';
import 'package:ecommerce_design/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("/icons/back.svg"),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "/icons/search.svg",
                color: kTextColor,
              )),
          SizedBox(
            width: kDefaultPaddin,
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "/icons/cart.svg",
                color: kTextColor,
              )),
        ],
      ),
      body: Body(),
    );
  }
}
