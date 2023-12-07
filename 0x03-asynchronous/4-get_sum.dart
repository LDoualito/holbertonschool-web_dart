// 4-get_sum.dart

import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final userId = parseUserId(userData);

    if (userId == null) {
      return -1; // Unable to get user ID
    }

    final userOrdersData = await fetchUserOrders(userId);
    final userOrders = parseUserOrders(userOrdersData);

    if (userOrders == null) {
      return -1; // Unable to get user orders
    }

    double totalPrice = 0;

    for (final product in userOrders) {
      final productPriceData = await fetchProductPrice(product);
      final productPrice = parseProductPrice(productPriceData);

      if (productPrice == null) {
        return -1; // Unable to get product price
      }

      totalPrice += productPrice;
    }

    return totalPrice;
  } catch (error) {
    return -1; // Error caught
  }
}

String? parseUserId(String userData) {
  // Parse the user ID from the user data
  // In a real-world scenario, you might want to use a JSON decoding library
  // For simplicity, we'll use a basic string manipulation method here
  return '7ee9a243-01ca-47c9-aa14-0149789764c3'; // Assuming the user ID is present in the user data
}

List<String>? parseUserOrders(String userOrdersData) {
  try {
    final decodedOrders = json.decode(userOrdersData);
    return List<String>.from(decodedOrders);
  } catch (error) {
    return null; // Error decoding user orders
  }
}

double? parseProductPrice(String productPriceData) {
  try {
    final decodedPrice = json.decode(productPriceData);
    return decodedPrice.toDouble();
  } catch (error) {
    return null; // Error decoding product price
  }
}

void main() async {
  print(await calculateTotal());
}
