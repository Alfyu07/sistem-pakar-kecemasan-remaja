part of 'controller.dart';

class PakarController extends GetxController {
  var pakarList = List<Pakar>.empty().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchSilders();
    super.onInit();
  }

  void fetchSilders() async {
    try {
      isLoading(true);
      var category = await PakarServices.fetchCategory();
      // ignore: unnecessary_null_comparison
      if (category != null) {
        // ignore: unnecessary_cast
        pakarList.value = category as List<Pakar>;
      }
    } finally {
      isLoading(false);
    }
  }
}
