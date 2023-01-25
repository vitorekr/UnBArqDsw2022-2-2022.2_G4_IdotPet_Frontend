import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idotpet/config/app_routes.dart';
import 'package:idotpet/modules/auth/data_provider/user_api.dart';

Widget buildEmail(){
  return Column(
    children: <Widget>[
      Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(
                left: 20,
              ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                  color: Color.fromRGBO(109, 111, 200, 1),
                  blurRadius: 4,
                  offset: Offset(0,8),
                  
                )
              ]
            ),
            height: 60,
            child: const TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top:14),
                    border: InputBorder.none,
                    icon: Icon(Icons.email),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
  
                  ),
                ),
           ),
        ),
    ],
  );
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              image: AssetImage("assets/father_dog2.png"),
              fit: BoxFit.cover),
        ),
      ),
      Container(
          height: MediaQuery.of(context).size.height,
          color: const Color.fromRGBO(38, 217, 224, 1),  
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(
          top : 15,
          left: 20,
          right: 20,
        ),
          // ignore: prefer_const_literals_to_create_immutables
          child: ListView(children: [   
            const Text('Frase de efeito',
              style: TextStyle(
              color: Colors.white,
              fontSize:25,
              fontWeight: FontWeight.bold,
              
              ),
            ),

            const SizedBox(
              height:15
              
            ), 
      
            const Text('Login',
              style: TextStyle(
              color: Colors.white,
              fontSize:22,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            buildEmail(),
            const SizedBox(
              height: 20,
            ),
           // buildPassword(),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 70,
              alignment: Alignment.center,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: const Color.fromRGBO(109, 111, 200, 1),
                borderRadius: const BorderRadius.all(
                Radius.circular(30)
               )


              ),
              
              child: SizedBox.expand(
               
                child: TextButton(
                   
                    child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          const Text('ENTRAR',
                            style: TextStyle(color: Colors.white,
                            fontSize: 20,
                        
                    
                            ),
                          ),
                        ]),
                    onPressed: () => {},
                ),
              ),
            ),
        ]),
      ),
    ]),
    
    );
  }

}