import 'package:get/state_manager.dart';
import 'package:movpass/models/services.dart';
import 'package:movpass/services/remote_services.dart';

class ServiceController extends GetxController {
  var isLoading = true.obs;
  // ignore: deprecated_member_use
  var servicosList = List<Services>().obs;

  @override
  void onInit() {
    fetchServicos();
    super.onInit();
  }

  void fetchServicos() async {
    try {
      isLoading(true);
      var servicos = await RemoteServices.fetchServicos();
      if (servicos != null) {
        servicosList.value = servicos;
      }
    } finally {
      isLoading(false);
    }
  }
}
