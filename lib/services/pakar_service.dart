part of 'services.dart';

class PakarServices {
  static var client = http.Client();
  static Future<List<Pakar>?> fetchCategory() async {
    var response = await client.get(Uri.parse(baseURL + 'pakar'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<Pakar> categoryProduct =
          (data['data'] as Iterable).map((e) => Pakar.fromJson(e)).toList();
      return categoryProduct;
    } else {
      return null;
    }
  }
}
