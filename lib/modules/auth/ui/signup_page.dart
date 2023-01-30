import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idotpet/config/app_routes.dart';
import 'package:idotpet/modules/auth/controllers/user_controller.dart';
import 'package:idotpet/modules/auth/data_provider/user_api.dart';

final _textEmail = TextEditingController();
final _textPassword = TextEditingController();
final _textCpf = TextEditingController();

class BuildCPFSignUp extends StatefulWidget {
  const BuildCPFSignUp({Key? key}) : super(key: key);

  @override
  BuildCPFSignUpState createState() => BuildCPFSignUpState();
}

class BuildCPFSignUpState extends State<BuildCPFSignUp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 10,
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
                  color: Colors.grey,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                )
              ]),
          height: 60,
          child: TextField(
            controller: _textCpf,
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(
              color: Colors.black38,
            ),
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(top: 14),
              border: InputBorder.none,
              icon: Icon(Icons.person),
              labelText: 'CPF',
              // ignore: prefer_const_constructors
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
}

class BuildEmailSignUp extends StatefulWidget {
  const BuildEmailSignUp({Key? key}) : super(key: key);

  @override
  BuildEmailSignUpState createState() => BuildEmailSignUpState();
}

class BuildEmailSignUpState extends State<BuildEmailSignUp> {
  @override
  Widget build(BuildContext context) {
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
                  offset: Offset(0, 2),
                )
              ]),
          height: 60,
          child: TextField(
            controller: _textEmail,
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(
              color: Colors.black38,
            ),
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(top: 14),
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
}

class BuildPasswordSignUp extends StatefulWidget {
  const BuildPasswordSignUp({Key? key}) : super(key: key);

  @override
  BuildPasswordSignUpState createState() => BuildPasswordSignUpState();
}

class BuildPasswordSignUpState extends State<BuildPasswordSignUp> {
  @override
  Widget build(BuildContext context) {
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
                  offset: Offset(0, 2),
                )
              ]),
          height: 60,
          child: TextField(
            controller: _textPassword,
            obscureText: true,
            style: const TextStyle(
              color: Colors.black38,
            ),
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(top: 14),
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
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Get.find<UserController>();
    return Scaffold(
      body: ListView(children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.9999,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/mother_cat2.png"),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          color: const Color.fromARGB(255, 252, 172, 149),
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(
            top: 15,
            left: 20,
            right: 20,
          ),
          // ignore: prefer_const_literals_to_create_immutables
          child: ListView(children: [
            const Text(
              'Todos os pets merecem amor !!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            const BuildEmailSignUp(),
            const BuildCPFSignUp(),
            const SizedBox(
              height: 10,
            ),
            const BuildPasswordSignUp(),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 70,
              alignment: Alignment.center,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 139, 106),
                  borderRadius: const BorderRadius.all(Radius.circular(30))),

              child: SizedBox.expand(
                child: TextButton(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Text(
                          'CRIAR NOVA CONTA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ]),
                  onPressed: () async {
                    final signup = await userController.signUp(
                        _textEmail.text, _textPassword.text, _textEmail.text, _textCpf.text);
                    if (signup) {
                      Get.offNamed(AppRoutes.loginPath());
                    } else {
                      Get.offNamed(AppRoutes.loginPath());
                    }
                  },
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
