part of 'controller.dart';

class GejalaController extends GetxController {
  var pakarList = List<Gejala>.empty().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void fetchSilders(int? id) async {
    try {
      isLoading(true);
      var category = await GejalaServices.fetchCategory(id!);
      // ignore: unnecessary_null_comparison
      if (category != null) {
        // ignore: unnecessary_cast
        pakarList.value = category as List<Gejala>;
      }
    } finally {
      isLoading(false);
    }
  }
}
