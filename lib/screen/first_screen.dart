import 'package:flutter/material.dart';
import 'package:flutter_clothes_store_ui/screen/second_screen.dart';
import 'package:flutter_clothes_store_ui/tools/colors.dart';
import 'package:flutter_clothes_store_ui/tools/radius.dart';

import '../tools/styles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.02,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(width * 0.02),
                        decoration: BoxDecoration(
                          color: greyColor,
                          borderRadius: getBorderRadiusWidget(context, 1),
                        ),
                        child: const Icon(
                          Icons.shopping_cart_outlined,
                          color: darkColor,
                        ),
                      ),
                      const Text(
                        'Bestbazar',
                        style: textStyle10,
                      ),
                      Container(
                        padding: EdgeInsets.all(width * 0.02),
                        decoration: BoxDecoration(
                          color: greyColor,
                          borderRadius: getBorderRadiusWidget(context, 1),
                        ),
                        child: const Icon(
                          Icons.notifications_none_outlined,
                          color: darkColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: const Text(
                    'Find all yours style here',
                    style: textStyle2,
                  ),
                ),
                SizedBox(height: height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.03,
                        ),
                        width: width * 0.8,
                        height: height * 0.065,
                        decoration: BoxDecoration(
                          color: greyColor,
                          borderRadius: getBorderRadiusWidget(context, 1),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.search_outlined,
                              color: darkColor,
                            ),
                            SizedBox(width: width * 0.03),
                            Text(
                              'Search here ...',
                              style: textStyle7,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(width * 0.03),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: getBorderRadiusWidget(context, 1),
                        ),
                        child: const Icon(
                          Icons.filter_alt_outlined,
                          color: whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.03,
                  ),
                  child: const Text(
                    'Discover',
                    style: textStyle2,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: width * 0.03),
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.06,
                          vertical: height * 0.01,
                        ),
                        decoration: BoxDecoration(
                          color: greyColor,
                          borderRadius: getBorderRadiusWidget(context, 1),
                        ),
                        child: const Text(
                          'All',
                          style: textStyle5,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width * 0.03),
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.06,
                          vertical: height * 0.01,
                        ),
                        decoration: BoxDecoration(
                          color: greyColor,
                          borderRadius: getBorderRadiusWidget(context, 1),
                        ),
                        child: const Text(
                          'Spring',
                          style: textStyle5,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width * 0.03),
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.06,
                          vertical: height * 0.01,
                        ),
                        decoration: BoxDecoration(
                          color: greyColor,
                          borderRadius: getBorderRadiusWidget(context, 1),
                        ),
                        child: const Text(
                          'Summer',
                          style: textStyle5,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width * 0.03),
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.06,
                          vertical: height * 0.01,
                        ),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: getBorderRadiusWidget(context, 1),
                        ),
                        child: const Text(
                          'Fall',
                          style: textStyle14,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width * 0.03),
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.06,
                          vertical: height * 0.01,
                        ),
                        decoration: BoxDecoration(
                          color: greyColor,
                          borderRadius: getBorderRadiusWidget(context, 1),
                        ),
                        child: const Text(
                          'Winter',
                          style: textStyle5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.03),
                SizedBox(
                  width: width,
                  height: height*0.7,
                  child: GridView(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.03,
                      vertical: height * 0.02,
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.74,
                      crossAxisSpacing: width * 0.05,
                      mainAxisSpacing: height * 0.02,
                    ),
                    children: [
                      ClothesWidget(
                        width: width,
                        height: height,
                        image: 'pic1',
                        name: 'ANTHENA',
                        name2: 'Green Trench coat',
                        price: '300',
                      ),
                      ClothesWidget(
                        width: width,
                        height: height,
                        image: 'pic2',
                        name: 'PUMA',
                        name2: 'Grey Trench coat',
                        price: '265',
                      ),
                      ClothesWidget(
                        width: width,
                        height: height,
                        image: 'pic3',
                        name: 'NIKE',
                        name2: 'Pink Trench coat',
                        price: '245',
                      ),
                      ClothesWidget(
                        width: width,
                        height: height,
                        image: 'pic4',
                        name: 'PUMA',
                        name2: 'Red Trench coat',
                        price: '325',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ClothesWidget extends StatelessWidget {
  const ClothesWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.image,
    required this.name,
    required this.name2,
    required this.price,
  }) : super(key: key);

  final double width;
  final double height;
  final String image;
  final String name;
  final String name2;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: greyColor,
            blurRadius: 3,
            offset: Offset(3, 3),
          ),
        ],
        color: greyColor2,
        borderRadius: getBorderRadiusWidget(context, 0.03),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(width * 0.02),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset(
                    '$image.png',
                    width: width,
                  ),
                  Container(
                    padding: EdgeInsets.all(width * 0.01),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: getBorderRadiusWidget(context, 1),
                    ),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.02,
              ),
              width: width,
              decoration: BoxDecoration(
                borderRadius: getBorderRadiusWidget(context, 0.03),
                color: whiteColor,
                boxShadow: const [
                  BoxShadow(
                    color: greyColor,
                    blurRadius: 3,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.01),
                  Text(
                    name,
                    style: textStyle5,
                  ),
                  Text(
                    name2,
                    style: textStyle6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$$price',
                        style: textStyle11,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                            '4.7',
                            style: textStyle6,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
