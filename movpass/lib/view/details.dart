import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:movpass/models/services.dart';

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
            label,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff242A2C)),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Get.back();
                },
              );
            },
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(18),
            child: Column(
              children: [],
            ),
          ),
        ));
  }
}
