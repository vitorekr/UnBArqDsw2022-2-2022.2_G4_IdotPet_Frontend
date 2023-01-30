import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:get/get.dart';
import 'package:idotpet/config/app_routes.dart';
import 'package:idotpet/modules/auth/data_provider/user_api.dart';
import '../../home/ui/navbar.dart';
import 'caixa_selecao.dart';

Widget buildPhotoUpload() {
  return GestureDetector(
    onTap: () {
      print("Tapped");
    },
    child: Container(
      width: double.infinity,
      height: 230,
      color: const Color.fromRGBO(212, 212, 212, 1),
      alignment: Alignment.center,
      child: DottedBorder(
        color: Colors.black,
        strokeWidth: 1,
        dashPattern: [8,3],
        child: Container(
          width: 380,
          height: 190,
          color: const Color.fromRGBO(212, 212, 212, 1),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.add_a_photo_outlined,
                    color: Color.fromRGBO(233, 0, 84, 1),
                    size: 50),
              Text("Incluir fotos",
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromRGBO(233, 0, 84, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("0 de 6 adicionadas",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ]
          ),
        ),
      ),
    ),
  );
}


Widget buildDescription(){
  return Column(
    children: <Widget>[
      Container(
            alignment: Alignment.center,
            height: 120,
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
            child: const TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20
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


Widget buildGen(campo,descricao){
  return Column(
    children: <Widget>[
      const SizedBox(
        height: 15,
      ),
      Container(
      alignment: Alignment.topLeft,
      child: Text(campo,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 20,
              ),
        ),
      ),
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
            
            child: 
            TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 23
                  ),
                  decoration: InputDecoration(
                    labelText: descricao,
                    contentPadding: EdgeInsets.only(bottom:10),
                    border: InputBorder.none,
                    labelStyle: const TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
           ),
        ),
        const SizedBox(
        height: 5,
      ),
    ],
  );
}

class CadastrarPet extends StatelessWidget {
  const CadastrarPet({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(233, 0, 84, 1),
        title: const Text('Inserir anúncio'),
        centerTitle: true,
      ),
      body: 
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
            buildPhotoUpload(),
            
            buildGen("Nome do pet*","Ex. Jack Sparrow"),

            const Text('Espécie*',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const DropdownButtonEspecie(),

            buildGen("Raça*", "Ex. Pit Bull"),
            buildGen("Porte*", "Ex. Médio"),
            buildGen("Vacina*", "Descreva quais vacinas o animal já tomou. \n\nEx.: 4 V8s, 2 de Giardia, 1 de Raiva."),
            buildGen("CEP*", "Ex. 73234600"),

            const Text('Descrição*',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            buildDescription(),
            const SizedBox(
              height: 20,
            ),

            UnconstrainedBox(
                child: Container(
                  height: 70,
                  width: 220,
                  alignment: Alignment.center,
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(233, 0, 84, 1),
                      borderRadius: const BorderRadius.all(Radius.circular(30))),

                  child: SizedBox.expand(
                    child: TextButton(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            const Text(
                              'Enviar anúncio',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                      onPressed: () => {},
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,)
          ]
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}