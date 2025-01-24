import './models.dart';

class Buyer {
  final String imeprezime; // Buyer's full name
  final String adresa; // Address of the buyer
  final String grad; // City
  final int telefon; // Phone number
  final String email; // Email address
  final List<OrderList> orderLists; // List of associated OrderLists for the buyer

  // Constructor
  Buyer({
    required this.imeprezime,
    required this.adresa,
    required this.grad,
    required this.telefon,
    required this.email,
    List<OrderList>? orderLists, // Optional; defaults to an empty list
  }) : orderLists = orderLists ?? [];

  // Factory constructor to parse Buyer from JSON
  factory Buyer.fromJson(Map<String, dynamic> json) {
    // Parse nested `orderLists` JSON into List<OrderList> objects
    final orderListsJson = json['orderLists'] as List<dynamic>?;

    return Buyer(
      imeprezime: json['imeprezime'] ?? json['name'] ?? 'Unknown', // Handles compatibility
      adresa: json['adresa'] ?? '', // Default to an empty string if missing
      grad: json['grad'] ?? '', // Default to an empty string if missing
      telefon: json['telefon'] ?? 0, // Default to 0 if missing
      email: json['email'] ?? '', // Default to an empty string if missing
      orderLists: orderListsJson != null
          ? orderListsJson.map((orderList) => OrderList.fromJson(orderList)).toList()
          : [], // Default to an empty list if missing
    );
  }
}
