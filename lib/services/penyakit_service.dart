part of 'services.dart';

class PenyakitServices {
  static var client = http.Client();
  static Future<List<Penyakit>?> fetchCategory() async {
    var response = await client.get(Uri.parse(baseURL + 'penyakit'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<Penyakit> categoryProduct =
          (data['data'] as Iterable).map((e) => Penyakit.fromJson(e)).toList();
      return categoryProduct;
    } else {
      return null;
    }
  }
}
