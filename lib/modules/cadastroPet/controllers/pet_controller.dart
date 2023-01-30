import 'package:get/get.dart';
import 'package:idotpet/modules/cadastroPet/entities/pet.dart';
import 'package:idotpet/modules/cadastroPet/usecases/create_pet_usecase.dart';
import 'package:idotpet/modules/cadastroPet/usecases/get_pet_usecase.dart';

class PetController extends GetxController {
  final _createPetUseCase = Get.find<CreatePetUseCase>();
  final _getPetUseCase = Get.find<GetPetUseCase>();

  final List<Pet> _pets = [];
  List<Pet> get pets => _pets;

  Future<List<Pet>> getPet() async {
    final pets = await _getPetUseCase.call();
    _pets.addAll(pets);
    return pets;
  }
  
  Future<bool> createPet(String name, String specieName, String breedName, String size, String gender, String vaccine) async {
    final isCreated = await _createPetUseCase.call(name, specieName, breedName, size, gender, vaccine);
    return isCreated;
  }
  

}