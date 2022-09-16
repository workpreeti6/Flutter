import 'package:flutter/material.dart';
import 'package:justusnew/screen/orders/components/myorder.dart';

class OrdersList{
  final List<myorder> orderslist = [
    myorder(
        title: "#1245",
        category: 'Ironing',
        endplace: 'Kerala',
        deliverydate: DateTime.now(),
        travelType: 'Airplane',
        status: 'In Progress',
        estdil: '28/09/2022',
        price: 28,
        mop: 'Pay on Dilevery',
        address: "53 , Marunji Road , Hinjewadi , Pune",
        cat_icon: Icons.abc),
    myorder(
        title: "#2365",
        category: 'Washing',
        endplace: 'Punjab',
        deliverydate: DateTime.now(),
        travelType: 'Truck',
        status: 'Pending',
        estdil: '07/09/2002',
        price: 31,
                address: "53 , Marunji Road , Hinjewadi , Pune",
        mop: 'Credit Card'),
    myorder(
        title: '#5478',
        category: 'Washing',
        endplace: 'Gujarat',
        deliverydate: DateTime.now(),
        travelType: 'Ship',
        status: 'In Progress',
        estdil: '28/11/2022',
        price: 39,
                address: "53 , Marunji Road , Hinjewadi , Pune",
        mop: 'Debit Card'),
    myorder(
        title: '#6937',
        category: 'Knitting',
        endplace: 'Haryana',
        deliverydate: DateTime.now(),
        travelType: 'Airplane',
        status: 'In Progress',
        estdil: '12/09/2022',
        price: 100,
                address: "53 , Marunji Road , Hinjewadi , Pune",
        mop: 'UPI'),
    myorder(
        title: '#6635',
        category: 'Ironing',
        endplace: 'West Bengal',
        deliverydate: DateTime.now(),
        travelType: 'Ship',
        status: 'In Progress',
        estdil: '08/09/2022',
        price: 15,
                address: "53 , Marunji Road , Hinjewadi , Pune",
        mop: 'Credit Card'),
  ];

}