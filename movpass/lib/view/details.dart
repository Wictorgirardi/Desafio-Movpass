import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movpass/theme/colors.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {
  final String label;
  final String price;
  final String duration;

  Details(this.label, this.price, this.duration, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            (label).tr,
            style: const TextStyle(
                fontFamily: 'Mulish',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: darkGrey),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: darkGrey),
                onPressed: () {
                  Get.back();
                },
              );
            },
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      ('price').tr,
                      style: const TextStyle(
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: darkGrey),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      price,
                      style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          color: darkGrey),
                    ),
                  ],
                ),
                const SizedBox(height: 17),
                Row(
                  children: [
                    Text(
                      ('duration').tr,
                      style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                          color: darkGrey),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      duration + ('time').tr,
                      style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          color: darkGrey),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                (() {
                  switch (label) {
                    case 'free_evaluation':
                      return Text(
                        ('evaluation_text').tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                            color: darkGrey),
                      );
                    case 'functional':
                      return Text(
                        ('functional_text').tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                            color: darkGrey),
                      );
                    case 'hiit':
                      return Text(
                        ('hiit_text').tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                            color: darkGrey),
                      );
                    case 'stretching':
                      return Text(
                        ('stretching_text').tr,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                            color: darkGrey),
                      );
                    default:
                      return Text(
                        '',
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Mulish',
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
