import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idotpet/config/app_routes.dart';
import 'package:idotpet/modules/auth/data_provider/user_api.dart';

Widget buildName(){
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
                  color: Colors.grey,
                  blurRadius: 4,
                  offset: Offset(0,2),
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
                    icon: Icon(Icons.person),
                    labelText: 'Nome',
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
                  color: Colors.grey,
                  blurRadius: 4,
                  offset: Offset(0,2),
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

Widget buildPassword(){
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
                  color: Colors.grey,
                  blurRadius: 4,
                  offset: Offset(0,2),
                )
              ]
            ),
            height: 60,
            child: const TextField(
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top:14),
                    border: InputBorder.none,
                    icon: Icon(Icons.lock),
                    labelText: 'Password',
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
          padding: const EdgeInsets.only(
          top : 15,
          left: 20,
          right: 20,
        ),
          // ignore: prefer_const_literals_to_create_immutables
          child: ListView(children: [   
            const Text('Todos os pets merecem amor !!',
              style: TextStyle(
              color: Colors.white,
              fontSize:25,
              ),
            ),
            buildName(),
            const SizedBox(
              height: 10,
            ),
            buildEmail(),
            const SizedBox(
              height: 10,
            ),

            
        ]),
      ),
    ]),
    
    );
  }

}