part of 'controller.dart';

class ProsesController extends GetxController {
  Results? results;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void fetchSilders(List<Gejala>? gejala) async {
    try {
      isLoading(true);
      results = null;
      var category = await ProsesServices.fetchCategory(gejala!);
      // ignore: unnecessary_null_comparison
      if (category != null) {
        // ignore: unnecessary_cast
        results = category as Results;
      }
    } finally {
      isLoading(false);
    }
  }
}
