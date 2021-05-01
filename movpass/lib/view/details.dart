import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:movpass/theme/colors.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {
  String duration;
  String label;
  String price;

  Details(this.label, this.price, this.duration);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            (label).tr,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: darkGrey),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.arrow_back_ios, color: darkGrey),
                onPressed: () {
                  Get.back();
                },
              );
            },
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      ('price').tr,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: darkGrey),
                    ),
                    SizedBox(width: 8),
                    Text(
                      price,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: darkGrey),
                    ),
                  ],
                ),
                SizedBox(height: 17),
                Row(
                  children: [
                    Text(
                      ('duration').tr,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: darkGrey),
                    ),
                    SizedBox(width: 8),
                    Text(
                      duration + ('time').tr,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: darkGrey),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                (() {
                  switch (label) {
                    case 'free_evaluation':
                      return Text(
                        ('evaluation_text').tr,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: darkGrey),
                      );
                    case 'functional':
                      return Text(
                        ('functional_text').tr,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: darkGrey),
                      );
                    case 'hiit':
                      return Text(
                        ('hiit_text').tr,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: darkGrey),
                      );
                    case 'stretching':
                      return Text(
                        ('stretching_text').tr,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: darkGrey),
                      );
                  }
                }())
              ],
            ),
          ),
        ));
  }
}
