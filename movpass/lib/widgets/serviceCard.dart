import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movpass/models/services.dart';
import 'package:movpass/theme/colors.dart';
import 'package:movpass/view/details.dart';

class ServiceCard extends StatelessWidget {
  final Services service;
  const ServiceCard(this.service, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 1,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  (service.label).tr,
                  style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w600,
                      color: darkGrey),
                ),
                const Spacer(),
                const Icon(Icons.timer, size: 14),
                const SizedBox(
                  width: 5.5,
                ),
                Text(
                  (service.duration) + ('time').tr,
                  style: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w400,
                      color: darkGrey),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  ('price').tr,
                  style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700,
                      color: darkGrey),
                ),
                Text(
                  (service.price),
                  style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w400,
                      color: darkGrey),
                ),
                const Spacer(),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              width: double.infinity,
              child: OutlinedButton(
                child: Text(
                  ('details').tr,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w700,
                    color: purple,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  side: const BorderSide(color: purple),
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                ),
                onPressed: () {
                  Get.to(() =>
                      Details(service.label, service.price, service.duration));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
