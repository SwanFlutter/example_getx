import 'package:example_getx/controller/task_controller.dart';
import 'package:get/get.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TaskController());
  }
}
