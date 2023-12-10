import '4-util.dart';
import 'dart:convert';

calculateTotal() async {
	try {
		double price = 0;
		var id = json.decode(await fetchUserData())['id'];
		var products = json.decode(await fetchUserOrders(id));
		for (int i = 0; i < products.length; i++) {
			price += json.decode(await fetchProductPrice(products[i]));
		}
		return price;
	} catch (err) {
		return -1;
	}
}