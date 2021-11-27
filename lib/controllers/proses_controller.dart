part of 'controller.dart';

class ProsesController extends GetxController {
  Results? results;
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
        results = category as Results;
      }
    } finally {
      isLoading(false);
    }
  }
}
