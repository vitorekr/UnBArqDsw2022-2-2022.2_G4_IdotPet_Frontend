import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idotpet/config/app_routes.dart';
import 'package:idotpet/modules/auth/data_provider/user_api.dart';
import 'navbar.dart';
import 'caixa_selecao.dart';

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
                  color: Colors.pink,
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
                    labelText: 'Ex.: Snoopy',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
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

Widget buildSize(){
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
                  color: Colors.pink,
                  blurRadius: 4,
                  offset: Offset(0,2),
                )
              ]
            ),
            height: 60,
            child: const TextField(
                  keyboardType: TextInputType.emailAddress, // E ESSE EMAILADRESS PRA TODO LADO?
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top:14),
                    border: InputBorder.none,
                    labelText: 'Ex.: Médio',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
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

Widget buildVaccines(){
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
                  color: Colors.pink,
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
                  maxLines: 5,
                  minLines: 1,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top:30),
                    border: InputBorder.none,
                    labelText: 'Descreva quais vacinas o animal já tomou. \n\nEx.: 4 V8s, 2 de Giardia, 1 de Raiva.',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
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

Widget buildDescription(){
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
                  color: Colors.pink,
                  blurRadius: 4,
                  offset: Offset(0,2),
                )
              ]
            ),
            height: 60,
            child: const TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Descreva os detalhes do seu pet.\n',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
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

Widget buildCEP(){
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
                  color: Colors.pink,
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


class CadastrarPet extends StatelessWidget {
  const CadastrarPet({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(233, 0, 84, 1),
        title: const Text('Inserir anúncio'),
        centerTitle: true,
      ),
      body: Column(children:[
          const Text('Nome do pet*',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          buildName(),

          const Text('Espécie*',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const DropdownButtonEspecie(),

          const Text('Porte*',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          buildSize(),

          const Text('Vacinas*',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          buildVaccines(),

          const Text('Descrição*',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          buildDescription(),

          const Text('CEP*',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          buildCEP(),
        ]
      ),
      
      bottomNavigationBar: const BottomNavBar(),

    );
  }

}