import 'package:get/get.dart';
import 'inbox_controller.dart';

class InboxBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<InboxController>(InboxController());
  }
}
