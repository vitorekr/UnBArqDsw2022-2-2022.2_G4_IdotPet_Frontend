import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:idotpet/modules/auth/data_provider/iuser_api.dart';
import 'package:idotpet/modules/auth/data_provider/user_api.dart';
import 'package:idotpet/modules/auth/entities/user.dart';
import 'package:idotpet/modules/cadastroPet/entities/ipet_api.dart';
import 'package:idotpet/modules/cadastroPet/entities/pet.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PetApi implements IPetApi {
  
  // late dynamic _token;
  // dynamic get token => _token;

  @override
  Future<List<Pet>> getPet() async {
    final Dio dio = Dio();

    var prefs = await SharedPreferences.getInstance();

    final json = await dio.get('http://192.168.0.184:8000/pet/',
      options: Options(headers: {
        'Authorization': 'Bearer' + ' ' + prefs.getString('token')!
      }));
    // final maps = jsonDecode(json.data);
    // final pet = Pet.fromMap(json.data);
    final pets = List<Pet>.from(json.data.map((x) => Pet.fromMap(x)));
    return pets;
  }

  @override
  Future<bool> createPet(String name, String specieName, String breedName, String size, String gender, String vaccine) async {
    final Dio dio = Dio();

    var prefs = await SharedPreferences.getInstance();

    var formData = {
        'name': name,
        'age': 0,
        'specie_name': specieName,
        'breed_name': breedName,
        'size': size,
        'gender': gender,
        'vaccine': vaccine
    };
    final jsonEncodeData = jsonEncode(formData);
    try{
      final result = await dio.post('http://192.168.0.184:8000/pet/', 
        data: jsonEncodeData,
        options: Options(headers: {
         'Authorization': "Bearer" + ' ' + prefs.getString('token')!
       }));
      if(result.statusCode == 201) {
      return true;
    } else {
      return false;
    }
    } on DioError catch(e){
      print(e.message);
      print(e.response);
      print(e.requestOptions);
      print(e.error);
      return false;
    }

    
  }
}
