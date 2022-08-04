import 'package:get/get.dart';
import '../../../services/http_client.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  Future<void> onInit() async {
    super.onInit();
    var response = await HttpClient()
        .get('https://datausa.io/api/data?drilldowns=Nation&measures=Population', null, false);
    print(response['data']);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
