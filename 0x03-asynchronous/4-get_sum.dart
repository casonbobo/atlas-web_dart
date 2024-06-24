import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    Map<String, dynamic> userData = jsonDecode(await fetchUserData());
    int userID = userData['id'];

    var userOrders = await fetchUserOrders(userID);
    List<dynamic> orders = jsonDecode(userOrders);
    
    double totalPrice = 0;
    for (var item in orders) {
      String productName = item['product'];
      double productPrice = await fetchProductPrice(productName);
      totalPrice += productPrice * item['quantity'];
    }

    return totalPrice;
  } catch (e) {
    return -1;
  }
}
