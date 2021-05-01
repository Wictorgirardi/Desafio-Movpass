import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:movpass/models/services.dart';
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
                  ((service.label).toString()).tr,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff242A2C)),
                ),
                Spacer(),
                Icon(Icons.timer, size: 12),
                SizedBox(
                  width: 5.5,
                ),
                Text(
                  (service.duration).toString() + ('time').tr,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff242A2C)),
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
                      color: Color(0xff242A2C)),
                ),
                Text(
                  'R\$' + (service.price).toString(),
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff242A2C)),
                ),
                Spacer(),
              ],
            ),
            // ignore: deprecated_member_use
            Container(
              margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
              width: double.infinity,
              height: 36,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() =>
                      Details(service.label, service.price, service.duration));
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    ('details').tr,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff8B379B),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
