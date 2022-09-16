import 'package:flutter/cupertino.dart';

class myorder {
  myorder({
    this.title,
    this.category,
    this.endplace,
    required this.deliverydate,
    this.travelType,
    this.status,
    this.estdil,
    this.price,
    this.mop,
    this.address,
    this.cat_icon,
  });

  String? title;
  String? category;
  String? endplace;
  DateTime deliverydate;
  String? travelType;
  String? status;
  String? estdil;
  String? mop;
  String? address;
  int? price;
  IconData? cat_icon;

  bool? _isFavourite = false;

  bool? get isFavourite => _isFavourite;

  set isFavourite(bool? isFavourite) {
    _isFavourite = isFavourite;
  }

  factory myorder.fromJson(Map<String, dynamic> json) => myorder(
        title: json["title"] == null ? null : json["title"],
        category: json["category"] == null ? null : json["category"],
        endplace: json["endplace"] == null ? null : json["endplace"],
        deliverydate: json["dilevrydate"] == null ? null : json["dilevrydate"],
        travelType: json["travelType"] == null ? null : json["travelType"],
        status: json["status"] == null ? null : json["status"],
        estdil: json["estdil"] == null ? null : json["estdil"],
        price: json["price"] == null ? null : json["price"],
        cat_icon: json["cat_icon"] == null ? null : json["cat_icon"],
        mop: json["mop"] == null ? null : json["mop"],
        address: json["address"] == null ? null : json["address"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "category": category == null ? null : category,
        "endplace": endplace == null ? null : endplace,
        "dilevrydate": deliverydate == null ? null : deliverydate,
        "travelType": travelType == null ? null : travelType,
        "status": status == null ? null : status,
        "estdil": estdil == null ? null : estdil,
        "price": price == null ? null : price,
        "cat_icon": cat_icon == null ? null : cat_icon,
        "mop": mop == null ? null : mop,
        "address": address == null ? null : address,
      };
}
