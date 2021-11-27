part of 'services.dart';

class ProsesServices {
  static var client = http.Client();
  static Future<Results?> fetchCategory(List<Gejala> results) async {
    var input = jsonEncode(results);
    var response = await client.post(Uri.parse(baseURL + 'proses'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(<String, String>{
          'input': input,
        }));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      Results categoryProduct = Results.fromJson(data['data']);
      return categoryProduct;
    } else {
      return null;
    }
  }
}
