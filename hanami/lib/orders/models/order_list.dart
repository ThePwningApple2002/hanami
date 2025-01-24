import './models.dart'; // Ensure that the Order model is imported

class OrderList {
  List<Order> listaporudzbina;

  OrderList({List<Order>? listaporudzbina})
      : listaporudzbina = listaporudzbina ?? [];

  // Factory constructor to parse JSON into an OrderList
  factory OrderList.fromJson(Map<String, dynamic> json) {
    // Parse the `orders` key into a list of `Order` objects
    final ordersJson = json['orders'] as List<dynamic>?;

    return OrderList(
      listaporudzbina: ordersJson != null
          ? ordersJson.map((orderJson) => Order.fromJson(orderJson)).toList()
          : [], // Default to an empty list if orders are not provided
    );
  }
}