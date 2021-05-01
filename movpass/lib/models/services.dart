import 'dart:convert';

List<Services> servicesFromJson(String str) =>
    List<Services>.from(json.decode(str).map((x) => Services.fromJson(x)));

String servicesToJson(List<Services> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Services {
  Services({
    this.duration,
    this.id,
    this.label,
    this.price,
  });

  String duration;
  int id;
  String label;
  String price;

  factory Services.fromJson(Map<String, dynamic> json) => Services(
        duration: json["duration"].toString(),
        id: json["id"],
        label: json["label"].toString(),
        price: json["price"].toString() == '0'
            ? 'Grátis'
            : 'R\$' + json["price"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "duration": duration,
        "id": id,
        "label": label,
        "price": price,
      };
}
