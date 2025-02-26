import 'dart:convert';
import 'package:get/get.dart';

List<Services> servicesFromJson(String str) =>
    List<Services>.from(json.decode(str).map((x) => Services.fromJson(x)));

String servicesToJson(List<Services> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Services {
  Services({
    required this.duration,
    required this.id,
    required this.label,
    required this.price,
  });

  final String duration;
  final int id;
  final String label;
  final String price;

  factory Services.fromJson(Map<String, dynamic> json) => Services(
        duration: json["duration"].toString(),
        id: json["id"],
        label: json["label"].toString(),
        price: json["price"].toString() == '0'
            ? ('free').tr
            : 'R\$' + json["price"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "duration": duration,
        "id": id,
        "label": label,
        "price": price,
      };
}
