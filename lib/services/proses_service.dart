part of 'services.dart';

class ProsesServices {
  static var client = http.Client();
  static Future<Results?> fetchCategory(List<Gejala> results) async {
    print(results);
    var input = jsonEncode(results);
    print(input);
    var response = await client.post(Uri.parse(baseURL + 'proses'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(<String, String>{
          'input': input,
        }));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data);
      Results categoryProduct = Results.fromJson(data['data']);
      return categoryProduct;
    } else {
      return null;
    }
  }
}
