import 'package:flutter/material.dart';

List<Map<String, dynamic>> notificationDummies = [
  {
    "id": "notif1",
    "createdAt": DateTime(2022, 11, 1, 1, 0, 0, 0),
    "type": "Main",
    "category": "Payment",
    "icon": Icons.credit_card,
    "status": "Active",
    "title": "Selesaikan Pembayaranmu",
    "body": null,
    "detail": {
      "id": "TRX-0001",
      "createdAt": DateTime(2022, 11, 15, 09, 08, 01),
      "product": {
        "id": "Tri10.000",
        "name": "Denom 10.000",
        "operator": "Tri",
        "basePrice": 10800,
        "sellPrice": 11500,
        "icon": "assets/images/products/tri.png",
      },
      "price": 11500,
      "disclaimer": (11500 * 2.5 / 100).ceil(),
      "subTotal": (11500 + (11500 * 2.5 / 100)).ceil(),
      "status": "Success",
      "token": "00011150010800",
      "customerID": "08x1234511500",
    },
  },
  {
    "id": "notif2",
    "createdAt": DateTime(2022, 11, 1, 1, 0, 0, 0),
    "type": "Main",
    "category": "Transaction",
    "icon": Icons.widgets,
    "status": "Active",
    "title": "Pemesanan Tri Denom 20.000 berhasil",
    "body": "",
  },
  {
    "id": "notif3",
    "createdAt": DateTime(2022, 11, 1, 1, 0, 0, 0),
    "type": "Main",
    "category": "Payment Success",
    "icon": Icons.credit_card,
    "status": "Active",
    "title": "Pembayaran untuk pemesanan Tri Denom 20.000 telah terverifikasi",
    "body": "",
  },
  {
    "id": "notif4",
    "createdAt": DateTime(2022, 11, 1, 1, 0, 0, 0),
    "type": "Promo",
    "category": "Pulsa",
    "icon": Icons.event,
    "status": "Active",
    "title": "Diskon Produk Telkomsel",
    "body":
        "Mulai 1 - 25 November akan ada diskon untuk semua produk telkomsel, yuk tunggu apalagi borong sekarang",
  },
  {
    "id": "notif5",
    "createdAt": DateTime(2022, 11, 1, 1, 0, 0, 0),
    "type": "Promo",
    "category": "Pulsa",
    "icon": Icons.event,
    "status": "Active",
    "title": "Diskon Produk Tri",
    "body":
        "Mulai 5 - 30 November akan ada diskon untuk semua produk tri, yuk tunggu apalagi borong sekarang",
  },
];

List<Map<String, dynamic>> getMainNotification() {
  return notificationDummies
      .where((element) => element['type'] == 'Main')
      .toList();
}

List<Map<String, dynamic>> getPromoNotification() {
  return notificationDummies
      .where((element) => element['type'] == 'Promo')
      .toList();
}
