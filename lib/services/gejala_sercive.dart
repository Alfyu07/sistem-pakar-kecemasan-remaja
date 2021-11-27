part of 'services.dart';

class GejalaServices {
  static var client = http.Client();
  static Future<List<Gejala>?> fetchCategory(int id) async {
    var response = await client.post(Uri.parse(baseURL + '/api/gejala'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(<String, String>{
          'pakar_id': id.toString(),
        }));
    print(response.body);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<Gejala> categoryProduct =
          (data['data'] as Iterable).map((e) => Gejala.fromJson(e)).toList();
      return categoryProduct;
    } else {
      return null;
    }
  }
}
