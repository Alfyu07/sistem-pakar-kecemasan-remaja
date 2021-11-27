part of 'controller.dart';

class PenyakitController extends GetxController {
  var penyakitList = List<Penyakit>.empty().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchSilders();
    super.onInit();
  }

  void fetchSilders() async {
    try {
      isLoading(true);
      var category = await PenyakitServices.fetchCategory();
      // ignore: unnecessary_null_comparison
      if (category != null) {
        // ignore: unnecessary_cast
        penyakitList.value = category as List<Penyakit>;
      }
    } finally {
      isLoading(false);
    }
  }
}
