import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idotpet/config/app_routes.dart';
import 'package:idotpet/modules/auth/data_provider/user_api.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userApi = UserApi();

    return Scaffold(
      body: ListView(children: [
      Container(  
        height: MediaQuery.of(context).size.height/1.9999,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/mother_cat2.png"),
              fit: BoxFit.cover),
        ),
      ),
      Container(
          height: MediaQuery.of(context).size.height,
          color: const Color.fromARGB(255, 252, 172, 149),
          alignment: Alignment.topCenter,
          // ignore: prefer_const_literals_to_create_immutables
          child: ListView(children: [
            const Text('Ame os pets',
              style: TextStyle(
              color: Colors.white,
              fontSize:25,
              ),
            )
          ]),
        ),

      
        
    ]),
    
    );
  }

}