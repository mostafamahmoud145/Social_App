import 'package:flutter/material.dart';

class Food extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 812,
      color: Colors.white,
      padding: const EdgeInsets.only(top: 47, ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Container(
            width: 327,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        width: 24,
                        height: 24,
                        child: Stack(
                          children:[

                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Nevada, US",
                        style: TextStyle(
                          color: Color(0xff0c0c0c),
                          fontSize: 16,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 16,
                        height: 16,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Container(
                              width: 16,
                              height: 16,
                              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 6, ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Container(
                                    width: 10.83,
                                    height: 6.17,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Color(0xffff9431), width: 1.50, ),
                                      color: Color(0x7f7f3a44),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 327,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Text(
                        "Order Your Food\nFast and Free",
                        style: TextStyle(
                          color: Color(0xff0c0c0c),
                          fontSize: 28,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 23),
                      Container(
                        width: 100,
                        height: 100,
                        padding: const EdgeInsets.only(left: 3, right: 5, ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Container(
                              width: 92.19,
                              height: 90.62,
                              child: Stack(
                                children:[Positioned(
                                  left: 60.94,
                                  top: 14.06,
                                  child: Container(
                                    width: 10.94,
                                    height: 10.94,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xffd5d5d3),
                                    ),
                                  ),
                                ),
                                  Positioned(
                                    left: 67.53,
                                    top: 20.90,
                                    child: Container(
                                      width: 9.03,
                                      height: 13.48,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xffd5d5d3),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 32.81,
                                    top: 4.69,
                                    child: Container(
                                      width: 15.62,
                                      height: 15.62,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xfffdc8a2),
                                      ),
                                      padding: const EdgeInsets.only(left: 6, right: 2, top: 3, bottom: 9, ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                          Container(
                                            width: 7.29,
                                            height: 3.12,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: Color(0xfffdb683),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 4.69,
                                    top: 64.06,
                                    child: Container(
                                      width: 10.94,
                                      height: 9.38,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xffc7483c),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9.38,
                                    top: 68.75,
                                    child: Container(
                                      width: 21.88,
                                      height: 21.88,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xff34507b),
                                      ),
                                      padding: const EdgeInsets.all(6),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                          Container(
                                            width: 9.38,
                                            height: 9.38,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: Color(0xffd5d5d3),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 1.56,
                                    top: 21.88,
                                    child: Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xffd65246),
                                      ),
                                      padding: const EdgeInsets.symmetric(vertical: 5, ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                          Container(
                                            width: 25,
                                            height: 3.12,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: Color(0xffc7483c),
                                            ),
                                          ),
                                          SizedBox(height: 3.12),
                                          Container(
                                            width: 3.12,
                                            height: 9.38,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: Color(0xffdf6257),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                        width: 81.25,
                                        height: 39.06,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xffd65246),
                                        ),
                                        child: Stack(
                                          children:[
                                            Positioned(
                                              left: 14.48,
                                              top: 23.41,
                                              child: Container(
                                                width: 3.83,
                                                height: 3.85,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8),
                                                  color: Color(0xffdf6257),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 6.27,
                                              top: 25.93,
                                              child: Container(
                                                width: 7.11,
                                                height: 7.57,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8),
                                                  color: Color(0xffdf6257),
                                                ),
                                              ),
                                            ),
                                            Positioned.fill(
                                              child: Align(
                                                alignment: Alignment.bottomRight,
                                                child: Container(
                                                  width: 64.06,
                                                  height: 18.75,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(8),
                                                  ),
                                                  child: FlutterLogo(size: 18.75),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 25,
                                              top: 6.25,
                                              child: Container(
                                                width: 18.75,
                                                height: 6.25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8),
                                                  color: Color(0xff34507b),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 43.75,
                                              top: 26.56,
                                              child: Container(
                                                width: 12.50,
                                                height: 6.25,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8),
                                                  color: Color(0xffd5d5d3),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 46.88,
                                    child: Container(
                                      width: 28.12,
                                      height: 9.38,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xffd5d5d3),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 30.51,
                                    top: 0,
                                    child: Container(
                                      width: 16.37,
                                      height: 15.63,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xffd65246),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 32.81,
                                    top: 42.19,
                                    child: Container(
                                      width: 28.23,
                                      height: 28.12,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xff7a432a),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 32.81,
                                    top: 20.31,
                                    child: Container(
                                      width: 32.81,
                                      height: 21.88,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xffd65246),
                                      ),
                                      padding: const EdgeInsets.only(left: 5, right: 20, top: 9, bottom: 3, ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                          Container(
                                            width: 7.35,
                                            height: 9.56,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: Color(0xffc7483c),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 68.75,
                                    top: 32.81,
                                    child: Container(
                                      width: 12.50,
                                      height: 10.94,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xffd65246),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        width: 21.86,
                                        height: 21.86,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xff34507b),
                                        ),
                                        child: Stack(
                                          children:[
                                            Positioned.fill(
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  width: 9.38,
                                                  height: 9.38,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(8),
                                                    color: Color(0xffcececc),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 6.04,
                                              top: 6.25,
                                              child: Container(
                                                width: 9.11,
                                                height: 7.10,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8),
                                                  color: Color(0xffc6c6c4),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 3.89,
                                              top: 4.33,
                                              child: Container(
                                                width: 9.74,
                                                height: 9.74,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8),
                                                  color: Color(0xffd5d5d3),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        width: 21.76,
                                        height: 18.65,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xff2f486e),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        width: 25,
                                        height: 18.75,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xffd65246),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 65.62,
                                    top: 31.25,
                                    child: Container(
                                      width: 9.38,
                                      height: 10.94,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xfffdc8a2),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 65.62,
                                    top: 37.50,
                                    child: Container(
                                      width: 6.25,
                                      height: 6.25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xff34507b),
                                      ),
                                    ),
                                  ),],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.80),
          Container(
            width: 327,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffe6e6e6), width: 1, ),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          width: 24,
                          height: 24,
                          padding: const EdgeInsets.only(left: 3, right: 2, top: 3, bottom: 2, ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Container(
                                width: 20.26,
                                height: 20.72,
                                child: Stack(
                                  children:[Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 19.48,
                                        height: 19.48,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Color(0xff0c0c0c), width: 1.50, ),
                                        ),
                                      ),
                                    ),
                                  ),
                                    Positioned.fill(
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          width: 5.02,
                                          height: 5.01,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: Color(0xff0c0c0c), width: 1.50, ),
                                            color: Color(0x7f7f3a44),
                                          ),
                                        ),
                                      ),
                                    ),],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 12),
                        Text(
                          "Search",
                          style: TextStyle(
                            color: Color(0xffcccccc),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffff9431), width: 1, ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Container(
                        width: 24,
                        height: 24,
                        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5, ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Container(
                              width: 16,
                              height: 14.40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: FlutterLogo(size: 14.399999618530273),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.80),
          Text(
            "Categories",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 16.80),
          Container(
            width: 351,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffff9431),
                  ),
                  padding: const EdgeInsets.only(left: 8, right: 20, ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Text(
                          "🍔",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: "DM Sans",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        "Burger",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "DM Sans",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffff9431), width: 1, ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(left: 8, right: 20, ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Text(
                          "🍕",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: "DM Sans",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        "Pizza",
                        style: TextStyle(
                          color: Color(0xff0c0c0c),
                          fontSize: 18,
                          fontFamily: "DM Sans",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffff9431), width: 1, ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(left: 8, right: 20, ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Text(
                          "🌭",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: "DM Sans",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        "Sandwich",
                        style: TextStyle(
                          color: Color(0xff0c0c0c),
                          fontSize: 18,
                          fontFamily: "DM Sans",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                Opacity(
                  opacity: 0,
                  child: Container(
                    width: 12,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: FlutterLogo(size: 12),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.80),
          Container(
            width: 327,
            height: 356,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x1e000000),
                                blurRadius: 8,
                                offset: Offset(0, 1),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8, ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                      color: Color(0xff0c0c0c),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Container(
                                width: double.infinity,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.all(3),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                          Container(
                                            width: 87,
                                            height: 70,
                                            child: FlutterLogo(size: 70),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                          Container(
                                            width: double.infinity,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children:[
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "Chicken burger",
                                                    style: TextStyle(
                                                      color: Color(0xff0c0c0c),
                                                      fontSize: 18,
                                                      fontFamily: "DM Sans",
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 4),
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "200 gr chicken + cheese  Lettuce + tomato",
                                                    style: TextStyle(
                                                      color: Color(0xff0c0c0c),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Container(
                                            width: double.infinity,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children:[
                                                Text(
                                                  "\$ 22.00",
                                                  style: TextStyle(
                                                    color: Color(0xffff9431),
                                                  ),
                                                ),
                                                SizedBox(width: 67),
                                                Container(
                                                  width: 24,
                                                  height: 24,
                                                  child: Stack(
                                                    children:[Container(
                                                      width: 24,
                                                      height: 24,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Color(0xffff9431),
                                                      ),
                                                    ),
                                                      Positioned.fill(
                                                        child: Align(
                                                          alignment: Alignment.center,
                                                          child: Container(
                                                            width: 12.50,
                                                            height: 12,
                                                            padding: const EdgeInsets.only(top: 7, ),
                                                            child: Column(
                                                              mainAxisSize: MainAxisSize.min,
                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                              children:[
                                                                Container(
                                                                  width: 12.50,
                                                                  height: 1.50,
                                                                  decoration: BoxDecoration(
                                                                    border: Border.all(color: Colors.white, width: 0.50, ),
                                                                  ),
                                                                ),
                                                                SizedBox(height: 539.14),
                                                                Transform.rotate(
                                                                  angle: 1.57,
                                                                  child: Container(
                                                                    width: 12.50,
                                                                    height: 1.50,
                                                                    decoration: BoxDecoration(
                                                                      border: Border.all(color: Colors.white, width: 0.50, ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 17),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x1e000000),
                                blurRadius: 8,
                                offset: Offset(0, 1),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8, ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                      color: Color(0xff0c0c0c),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Container(
                                width: double.infinity,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    Container(
                                      width: 105,
                                      height: 76,
                                      child: FlutterLogo(size: 76),
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                          Container(
                                            width: double.infinity,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children:[
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "Chese burger",
                                                    style: TextStyle(
                                                      color: Color(0xff0c0c0c),
                                                      fontSize: 18,
                                                      fontFamily: "DM Sans",
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 4),
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "200 gr meat + Lettuce cheese + onion + tomato ",
                                                    style: TextStyle(
                                                      color: Color(0xff0c0c0c),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Container(
                                            width: double.infinity,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children:[
                                                Text(
                                                  "\$25.00",
                                                  style: TextStyle(
                                                    color: Color(0xffff9431),
                                                  ),
                                                ),
                                                SizedBox(width: 67),
                                                Container(
                                                  width: 24,
                                                  height: 24,
                                                  child: Stack(
                                                    children:[Container(
                                                      width: 24,
                                                      height: 24,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Color(0xffff9431),
                                                      ),
                                                    ),
                                                      Positioned.fill(
                                                        child: Align(
                                                          alignment: Alignment.center,
                                                          child: Container(
                                                            width: 12.50,
                                                            height: 12,
                                                            padding: const EdgeInsets.only(top: 7, ),
                                                            child: Column(
                                                              mainAxisSize: MainAxisSize.min,
                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                              children:[
                                                                Container(
                                                                  width: 12.50,
                                                                  height: 1.50,
                                                                  decoration: BoxDecoration(
                                                                    border: Border.all(color: Colors.white, width: 0.50, ),
                                                                  ),
                                                                ),
                                                                SizedBox(height: 539.14),
                                                                Transform.rotate(
                                                                  angle: 1.57,
                                                                  child: Container(
                                                                    width: 12.50,
                                                                    height: 1.50,
                                                                    decoration: BoxDecoration(
                                                                      border: Border.all(color: Colors.white, width: 0.50, ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
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
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x1e000000),
                                blurRadius: 8,
                                offset: Offset(0, 1),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8, ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                      color: Color(0xff0c0c0c),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Container(
                                width: double.infinity,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    Container(
                                      width: 105,
                                      height: 76,
                                      child: FlutterLogo(size: 76),
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                          Container(
                                            width: double.infinity,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children:[
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "Chese burger",
                                                    style: TextStyle(
                                                      color: Color(0xff0c0c0c),
                                                      fontSize: 18,
                                                      fontFamily: "DM Sans",
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 4),
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "200 gr meat + Lettuce cheese + onion + tomato ",
                                                    style: TextStyle(
                                                      color: Color(0xff0c0c0c),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Container(
                                            width: double.infinity,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children:[
                                                Text(
                                                  "\$25.00",
                                                  style: TextStyle(
                                                    color: Color(0xffff9431),
                                                  ),
                                                ),
                                                SizedBox(width: 67),
                                                Container(
                                                  width: 24,
                                                  height: 24,
                                                  child: Stack(
                                                    children:[Container(
                                                      width: 24,
                                                      height: 24,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Color(0xffff9431),
                                                      ),
                                                    ),
                                                      Positioned.fill(
                                                        child: Align(
                                                          alignment: Alignment.center,
                                                          child: Container(
                                                            width: 12.50,
                                                            height: 12,
                                                            padding: const EdgeInsets.only(top: 7, ),
                                                            child: Column(
                                                              mainAxisSize: MainAxisSize.min,
                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                              children:[
                                                                Container(
                                                                  width: 12.50,
                                                                  height: 1.50,
                                                                  decoration: BoxDecoration(
                                                                    border: Border.all(color: Colors.white, width: 0.50, ),
                                                                  ),
                                                                ),
                                                                SizedBox(height: 762.14),
                                                                Transform.rotate(
                                                                  angle: 1.57,
                                                                  child: Container(
                                                                    width: 12.50,
                                                                    height: 1.50,
                                                                    decoration: BoxDecoration(
                                                                      border: Border.all(color: Colors.white, width: 0.50, ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 17),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x1e000000),
                                blurRadius: 8,
                                offset: Offset(0, 1),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8, ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                      color: Color(0xff0c0c0c),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Container(
                                width: double.infinity,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.all(3),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                          Container(
                                            width: 87,
                                            height: 70,
                                            child: FlutterLogo(size: 70),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                          Container(
                                            width: double.infinity,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children:[
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "Chicken burger",
                                                    style: TextStyle(
                                                      color: Color(0xff0c0c0c),
                                                      fontSize: 18,
                                                      fontFamily: "DM Sans",
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 4),
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "200 gr chicken + cheese  Lettuce + tomato",
                                                    style: TextStyle(
                                                      color: Color(0xff0c0c0c),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Container(
                                            width: double.infinity,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children:[
                                                Text(
                                                  "\$ 22.00",
                                                  style: TextStyle(
                                                    color: Color(0xffff9431),
                                                  ),
                                                ),
                                                SizedBox(width: 67),
                                                Container(
                                                  width: 24,
                                                  height: 24,
                                                  child: Stack(
                                                    children:[Container(
                                                      width: 24,
                                                      height: 24,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Color(0xffff9431),
                                                      ),
                                                    ),
                                                      Positioned.fill(
                                                        child: Align(
                                                          alignment: Alignment.center,
                                                          child: Container(
                                                            width: 12.50,
                                                            height: 12,
                                                            padding: const EdgeInsets.only(top: 7, ),
                                                            child: Column(
                                                              mainAxisSize: MainAxisSize.min,
                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                              children:[
                                                                Container(
                                                                  width: 12.50,
                                                                  height: 1.50,
                                                                  decoration: BoxDecoration(
                                                                    border: Border.all(color: Colors.white, width: 0.50, ),
                                                                  ),
                                                                ),
                                                                SizedBox(height: 762.14),
                                                                Transform.rotate(
                                                                  angle: 1.57,
                                                                  child: Container(
                                                                    width: 12.50,
                                                                    height: 1.50,
                                                                    decoration: BoxDecoration(
                                                                      border: Border.all(color: Colors.white, width: 0.50, ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
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
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x1e000000),
                                blurRadius: 8,
                                offset: Offset(0, 1),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8, ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                      color: Color(0xff0c0c0c),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Container(
                                width: double.infinity,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.all(3),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                          Container(
                                            width: 87,
                                            height: 70,
                                            child: FlutterLogo(size: 70),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                          Container(
                                            width: double.infinity,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children:[
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "Chicken burger",
                                                    style: TextStyle(
                                                      color: Color(0xff0c0c0c),
                                                      fontSize: 18,
                                                      fontFamily: "DM Sans",
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 4),
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "200 gr chicken + cheese  Lettuce + tomato",
                                                    style: TextStyle(
                                                      color: Color(0xff0c0c0c),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Container(
                                            width: double.infinity,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children:[
                                                Text(
                                                  "\$ 22.00",
                                                  style: TextStyle(
                                                    color: Color(0xffff9431),
                                                  ),
                                                ),
                                                SizedBox(width: 67),
                                                Container(
                                                  width: 24,
                                                  height: 24,
                                                  child: Stack(
                                                    children:[Container(
                                                      width: 24,
                                                      height: 24,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Color(0xffff9431),
                                                      ),
                                                    ),
                                                      Positioned.fill(
                                                        child: Align(
                                                          alignment: Alignment.center,
                                                          child: Container(
                                                            width: 12.50,
                                                            height: 12,
                                                            padding: const EdgeInsets.only(top: 7, ),
                                                            child: Column(
                                                              mainAxisSize: MainAxisSize.min,
                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                              children:[
                                                                Container(
                                                                  width: 12.50,
                                                                  height: 1.50,
                                                                  decoration: BoxDecoration(
                                                                    border: Border.all(color: Colors.white, width: 0.50, ),
                                                                  ),
                                                                ),
                                                                SizedBox(height: 985.14),
                                                                Transform.rotate(
                                                                  angle: 1.57,
                                                                  child: Container(
                                                                    width: 12.50,
                                                                    height: 1.50,
                                                                    decoration: BoxDecoration(
                                                                      border: Border.all(color: Colors.white, width: 0.50, ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 17),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x1e000000),
                                blurRadius: 8,
                                offset: Offset(0, 1),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8, ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                      color: Color(0xff0c0c0c),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Container(
                                width: double.infinity,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    Container(
                                      width: 105,
                                      height: 76,
                                      child: FlutterLogo(size: 76),
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                          Container(
                                            width: double.infinity,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children:[
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "Chese burger",
                                                    style: TextStyle(
                                                      color: Color(0xff0c0c0c),
                                                      fontSize: 18,
                                                      fontFamily: "DM Sans",
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 4),
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "200 gr meat + Lettuce cheese + onion + tomato ",
                                                    style: TextStyle(
                                                      color: Color(0xff0c0c0c),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Container(
                                            width: double.infinity,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children:[
                                                Text(
                                                  "\$ 25.00",
                                                  style: TextStyle(
                                                    color: Color(0xffff9431),
                                                  ),
                                                ),
                                                SizedBox(width: 67),
                                                Container(
                                                  width: 24,
                                                  height: 24,
                                                  child: Stack(
                                                    children:[Container(
                                                      width: 24,
                                                      height: 24,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Color(0xffff9431),
                                                      ),
                                                    ),
                                                      Positioned.fill(
                                                        child: Align(
                                                          alignment: Alignment.center,
                                                          child: Container(
                                                            width: 12.50,
                                                            height: 12,
                                                            padding: const EdgeInsets.only(top: 7, ),
                                                            child: Column(
                                                              mainAxisSize: MainAxisSize.min,
                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                              children:[
                                                                Container(
                                                                  width: 12.50,
                                                                  height: 1.50,
                                                                  decoration: BoxDecoration(
                                                                    border: Border.all(color: Colors.white, width: 0.50, ),
                                                                  ),
                                                                ),
                                                                SizedBox(height: 985.14),
                                                                Transform.rotate(
                                                                  angle: 1.57,
                                                                  child: Container(
                                                                    width: 12.50,
                                                                    height: 1.50,
                                                                    decoration: BoxDecoration(
                                                                      border: Border.all(color: Colors.white, width: 0.50, ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
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
              ],
            ),
          ),
          SizedBox(height: 16.80),
          Container(
            width: 375,
            height: 84,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0), ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 15,
                  offset: Offset(0, -3),
                ),
              ],
              color: Colors.white,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 48, ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Container(
                  height: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 14, ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        width: 32,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomLeft: Radius.circular(28), bottomRight: Radius.circular(28), ),
                          color: Color(0xffff9431),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(bottom: 18, ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Container(
                              width: 28,
                              height: 28,
                              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2, ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Container(
                                    width: 22.17,
                                    height: 23.33,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xffff9431),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Home",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffff9431),
                                fontSize: 12,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 51),
                Container(
                  height: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 14, ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Opacity(
                        opacity: 0,
                        child: Container(
                          width: 32,
                          height: 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomLeft: Radius.circular(28), bottomRight: Radius.circular(28), ),
                            color: Color(0xffff9431),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(bottom: 18, ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Container(
                              width: 28,
                              height: 28,
                              padding: const EdgeInsets.only(left: 4, right: 3, ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Container(
                                    width: 21.10,
                                    height: 22.43,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: FlutterLogo(size: 21.100936889648438),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 4),
                            Opacity(
                              opacity: 0,
                              child: Text(
                                "Home",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffff9431),
                                  fontSize: 12,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 51),
                Container(
                  height: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 14, ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Opacity(
                        opacity: 0,
                        child: Container(
                          width: 32,
                          height: 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomLeft: Radius.circular(28), bottomRight: Radius.circular(28), ),
                            color: Color(0xffff9431),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(bottom: 18, ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Container(
                              width: 28,
                              height: 28,
                              padding: const EdgeInsets.all(3),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Container(
                                    width: 21.58,
                                    height: 21.58,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: FlutterLogo(size: 21.583332061767578),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 4),
                            Opacity(
                              opacity: 0,
                              child: Text(
                                "Home",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffff9431),
                                  fontSize: 12,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}