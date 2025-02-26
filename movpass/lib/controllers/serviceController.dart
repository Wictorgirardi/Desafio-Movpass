import 'package:get/state_manager.dart';
import 'package:movpass/models/services.dart';
import 'package:movpass/services/remote_services.dart';

class ServiceController extends GetxController {
  var isLoading = true.obs;
  // Use the proper list initialization syntax
  var servicosList = <Services>[].obs;

  @override
  void onInit() {
    fetchServicos();
    super.onInit();
  }

  void fetchServicos() async {
    try {
      isLoading(true);
      var servicos = await RemoteServices.fetchServicos();
      servicosList.value = servicos;
    } finally {
      isLoading(false);
    }
  }
}
