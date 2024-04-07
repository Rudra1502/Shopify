import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final Rx<int> carouselCurrentIndex = 0.obs;

  void updatePageInidicator(index) => carouselCurrentIndex.value = index;

}
