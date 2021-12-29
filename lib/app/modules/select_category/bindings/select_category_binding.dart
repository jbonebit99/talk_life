import 'package:get/get.dart';

import '../controllers/select_category_controller.dart';

class SelectCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectCategoryController>(
      () => SelectCategoryController(),
    );
  }
}
