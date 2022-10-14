import 'package:flutter/material.dart';
import 'package:flutter_clothes_store_ui/tools/colors.dart';
import 'package:flutter_clothes_store_ui/tools/radius.dart';

import '../tools/styles.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    String desc =
        'A hoodie (in some cases it is also spelled hoody and alternatively known as a hooded sweatshirt) is a sweatshirt.';
    return Container(
      color: primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: Container(
                  width: width,
                  height: height,
                  color: greyColor,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.05),
                        child: Image.asset(
                          'pic1.png',
                          width: width,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(width * 0.04),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(width * 0.02),
                              decoration: BoxDecoration(
                                borderRadius: getBorderRadiusWidget(context, 1),
                                color: whiteColor,
                              ),
                              child: const Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: darkColor,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(width * 0.02),
                              decoration: BoxDecoration(
                                borderRadius: getBorderRadiusWidget(context, 1),
                                color: whiteColor,
                              ),
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'ANTHENA',
                                style: textStyle1,
                              ),
                              Text(
                                'Solid Green Hoodie',
                                style: textStyle3,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Price',
                                style: textStyle7,
                              ),
                              const Text(
                                '\$300',
                                style: textStyle10,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.01,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: primaryColor, width: 2),
                              borderRadius:
                                  getBorderRadiusWidget(context, 0.02),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(
                                  '4.7',
                                  style: textStyle5,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: width * 0.02),
                          Text(
                            '(200 Reviews)',
                            style: textStyle7,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: height * 0.02),
                        height: height * 0.1,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: width,
                                margin: EdgeInsets.only(
                                  left: width * 0.03,
                                  right: width * 0.01,
                                ),
                                decoration: BoxDecoration(
                                  color: greyColor,
                                  border:
                                      Border.all(color: primaryColor, width: 2),
                                  borderRadius:
                                      getBorderRadiusWidget(context, 0.02),
                                ),
                                child: Image.asset('pic1.png'),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: width,
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 0.01),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset('pic5.png'),
                                    Container(
                                        width: width, color: Colors.black38),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: width,
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 0.01),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset(
                                      'pic6.png',
                                    ),
                                    Container(
                                        width: width, color: Colors.black38),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: width,
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 0.01),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset(
                                      'pic7.png',
                                    ),
                                    Container(
                                        width: width, color: Colors.black38),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'Information',
                        style: textStyle2,
                      ),
                      Text(
                        desc,
                        style: textStyle8,
                      ),
                      SizedBox(height: height * 0.02),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            fixedSize: Size(width, height * 0.07),
                            shape: getShapeWidget(context, 0.03)),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Add to bag',
                              style: textStyle13,
                            ),
                            SizedBox(width: width * 0.04),
                            const Icon(
                              Icons.shopping_bag,
                              color: whiteColor,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
