import 'package:flutter/material.dart';
import 'package:medicine_delivery/utils/colors.dart';
import 'package:medicine_delivery/widgets/big_text.dart';
import 'package:medicine_delivery/widgets/small_text.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            margin: EdgeInsets.only(top: 45, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                        text: "Pakistan", color: AppColors.mainColor, size: 20),
                    Row(
                      children: [
                        SmallText(text: "Karachi", color: Colors.black54),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: 45,
                    height: 45,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        FoodPageBody(),
      ],
    ));
  }
}
