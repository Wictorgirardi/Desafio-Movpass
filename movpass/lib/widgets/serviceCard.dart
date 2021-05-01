import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movpass/models/services.dart';
import 'package:movpass/theme/colors.dart';
import 'package:movpass/view/details.dart';

class ServiceCard extends StatelessWidget {
  final Services service;
  const ServiceCard(this.service);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 1,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Text(
                  ((service.label)).tr,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: darkGrey),
                ),
                Spacer(),
                Icon(Icons.timer, size: 12),
                SizedBox(
                  width: 5.5,
                ),
                Text(
                  (service.duration) + ('time').tr,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: darkGrey),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  ('price').tr,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: darkGrey),
                ),
                Text(
                  (service.price),
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: darkGrey),
                ),
                Spacer(),
              ],
            ),
            // ignore: deprecated_member_use
            Container(
                margin: EdgeInsets.only(top: 16.0),
                width: double.infinity,
                // ignore: deprecated_member_use
                child: OutlineButton(
                  child: Text(
                    ('details').tr,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: purple,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  onPressed: () {
                    Get.to(() => Details(
                        service.label, service.price, service.duration));
                  },
                  borderSide: BorderSide(
                    color: purple,
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
