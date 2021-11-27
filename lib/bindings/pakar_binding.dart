part of 'binding.dart';

class PakarBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PakarController(), permanent: true);
  }
}
