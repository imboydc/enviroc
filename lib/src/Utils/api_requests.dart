import 'package:woocommerce_api/woocommerce_api.dart';
import 'keys.dart';

Future getProducts() async {
  WooCommerceAPI wooCommerceAPI = WooCommerceAPI(
      url: "https://www.enviroclean.co.mz",
      consumerKey: consumer_keys,
      consumerSecret: consumer_secret);

  var products = await wooCommerceAPI.getAsync("products");
  return products;
}

Future getProductsByCategory(int categoryId) async {
  WooCommerceAPI wooCommerceAPI = WooCommerceAPI(
      url: "https://www.enviroclean.co.mz",
      consumerKey: consumer_keys,
      consumerSecret: consumer_secret);

  var products = await wooCommerceAPI.getAsync("products?category=$categoryId");
  return products;
}

Future getCategories() async {
  WooCommerceAPI wooCommerceAPI = WooCommerceAPI(
      url: "https://www.enviroclean.co.mz",
      consumerKey: consumer_keys,
      consumerSecret: consumer_secret);

  var categories = await wooCommerceAPI.getAsync("products/categories");
  return categories;
}

Future getProductsBySearch(String search) async {
  WooCommerceAPI wooCommerceAPI = WooCommerceAPI(
      url: "https://www.enviroclean.co.mz",
      consumerKey: consumer_keys,
      consumerSecret: consumer_secret);

  var products = await wooCommerceAPI.getAsync("products?search=$search");
  return products;
}

Future getPurchaseHistory() async {
  WooCommerceAPI wooCommerceAPI = WooCommerceAPI(
      url: "https://www.enviroclean.co.mz",
      consumerKey: consumer_keys,
      consumerSecret: consumer_secret);

  var purchaseHistory = await wooCommerceAPI.getAsync("orders");
  return purchaseHistory;
}
