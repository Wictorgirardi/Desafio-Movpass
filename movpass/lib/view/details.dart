import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {
  int duration;
  String label;
  num price;

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
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff242A2C)),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon:
                    const Icon(Icons.arrow_back_ios, color: Color(0xff242A2C)),
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
                          color: Color(0xff242A2C)),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'R\$' + price.toString(),
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff242A2C)),
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
                          color: Color(0xff242A2C)),
                    ),
                    SizedBox(width: 8),
                    Text(
                      duration.toString() + ('time').tr,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff242A2C)),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                (() {
                  switch (label.toString()) {
                    case 'free_evaluation':
                      return Text(
                        ('evaluation_text').tr,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff242A2C)),
                      );
                    case 'functional':
                      return Text(
                        ('functional_text').tr,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff242A2C)),
                      );
                    case 'hiit':
                      return Text(
                        ('hiit_text').tr,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff242A2C)),
                      );
                    case 'stretching':
                      return Text(
                        ('stretching_text').tr,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff242A2C)),
                      );
                  }
                }())
              ],
            ),
          ),
        ));
  }
}
