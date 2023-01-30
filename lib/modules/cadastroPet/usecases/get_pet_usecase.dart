import 'package:get/get.dart';
import 'package:idotpet/modules/cadastroPet/data_provider/pet_api.dart';
import 'package:idotpet/modules/cadastroPet/entities/pet.dart';

import '../entities/ipet_api.dart';

class GetPetUseCase {
  final sla = Get.put<IPetApi>(PetApi());
  final _petApi = Get.find<IPetApi>();

  Future<List<Pet>> call() async {
    return await _petApi.getPet();
  }
}