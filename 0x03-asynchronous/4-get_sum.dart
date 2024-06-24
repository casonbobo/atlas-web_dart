import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    Map<String, dynamic> userData = jsonDecode(await fetchUserData());
    int userID = userData['id'];

    List<Map<String, dynamic>> userOrders = await fetchUserOrders(userID.toString());

    double totalPrice = 0;
    for (Map<String, dynamic> order in userOrders) {
      String productName = order['product'];
      double productPrice = await fetchProductPrice(productName);
      totalPrice += productPrice * order['quantity'];
    }

    return totalPrice;
  } catch (e) {
    return -1;
  }
}
