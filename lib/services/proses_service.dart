part of 'services.dart';

class ProsesServices {
  static var client = http.Client();
  static Future<Results?> fetchCategory() async {
    var response = await client.get(Uri.parse(baseURL + 'peroses'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      Results categoryProduct = data['data'];
      return categoryProduct;
    } else {
      return null;
    }
  }
}
