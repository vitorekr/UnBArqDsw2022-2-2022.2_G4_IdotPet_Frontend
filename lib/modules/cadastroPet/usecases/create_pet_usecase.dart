import 'package:get/get.dart';
import 'package:idotpet/modules/cadastroPet/data_provider/pet_api.dart';

import '../entities/ipet_api.dart';

class CreatePetUseCase {
  final sla = Get.put<IPetApi>(PetApi());
  final _petApi = Get.find<IPetApi>();

  Future<bool> call(String name, String specieName, String breedName, String size, String gender, String vaccine) async {
    return await _petApi.createPet(name, specieName, breedName, size, gender, vaccine);
  }
}