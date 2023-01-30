import 'package:idotpet/modules/cadastroPet/entities/pet.dart';

abstract class IPetApi {
  Future<List<Pet>> getPet();
  Future<bool> createPet(String name, String specieName, String breedName, String size, String gender, String vaccine);
}