import 'package:flutter/cupertino.dart';

class myorder {
  myorder(
      {this.title,
      this.category,

      required this.deliverydate,
      
      this.status,
      this.estdil,
      this.price,
      this.mop,
      this.status_admin,
      this.cat_icon});

  String? title;
  String? category;

  DateTime deliverydate;
  
  String? status;
  
  String? estdil;
  String? mop;
  String? status_admin;
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

        deliverydate: json["dilevrydate"] == null ? null : json["dilevrydate"],
        
        status: json["status"] == null ? null : json["status"],
        status_admin: json["status_admin"] == null ? null : json["status_admin"],
        estdil: json["estdil"] == null ? null : json["estdil"],
        price: json["price"] == null ? null : json["price"],
        cat_icon: json["cat_icon"] == null ? null : json["cat_icon"],
        mop: json["mop"] == null ? null : json["mop"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "category": category == null ? null : category,

        "dilevrydate": deliverydate == null ? null : deliverydate,
        
        "status": status == null ? null : status,
        "status_admin": status_admin == null ? null : status_admin,
        "estdil": estdil == null ? null : estdil,
        "price": price == null ? null : price,
        "cat_icon": cat_icon == null ? null : cat_icon,
        "mop": mop == null ? null : mop,
      };
}
