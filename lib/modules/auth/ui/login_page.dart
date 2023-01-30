import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idotpet/config/app_routes.dart';
import 'package:idotpet/modules/auth/controllers/session_controller.dart';
import 'package:idotpet/modules/auth/controllers/user_controller.dart';
import 'package:idotpet/modules/auth/data_provider/user_api.dart';

final _textEmail = TextEditingController();
final _textPassword = TextEditingController();

class BuildEmail extends StatefulWidget {
  const BuildEmail({Key? key}) : super(key: key);

  @override
  BuildEmailState createState() => BuildEmailState();
}

class BuildEmailState extends State<BuildEmail> {
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
                  color: Color.fromRGBO(109, 111, 200, 1),
                  blurRadius: 4,
                  offset: Offset(0, 4),
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

class BuildPassword extends StatefulWidget {
  const BuildPassword({Key? key}) : super(key: key);

  @override
  BuildPasswordState createState() => BuildPasswordState();
}

class BuildPasswordState extends State<BuildPassword> {
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
                  color: Color.fromRGBO(109, 111, 200, 1),
                  blurRadius: 4,
                  offset: Offset(0, 4),
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
              labelText: 'Senha',
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

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final userController = Get.find<UserController>;
    final userController = Get.find<UserController>();
    final session = Get.find<SessionController>();
    return Scaffold(
      body: ListView(children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.9999,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/father_dog2.png"),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          color: const Color.fromRGBO(38, 217, 224, 1),
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(
            top: 15,
            left: 20,
            right: 20,
          ),
          // ignore: prefer_const_literals_to_create_immutables
          child: ListView(children: [
            const Text(
              'Entre, com todo amor e carinho',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const BuildEmail(),
            const SizedBox(
              height: 20,
            ),
            const BuildPassword(),
            const SizedBox(
              height: 25,
            ),
            UnconstrainedBox(
              child: Container(
                height: 40,
                width: 220,
                alignment: Alignment.center,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(109, 111, 200, 1),
                    borderRadius: const BorderRadius.all(Radius.circular(30))),

                child: SizedBox.expand(
                  child: TextButton(
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,

                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          const Text(
                            'ENTRAR',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                    onPressed: () async {
                      final loginStatus =
                          await userController.logIn(_textEmail.text, _textPassword.text);
                      if (loginStatus) {
                        session.loadCurrentSession();
                        Get.offNamed(AppRoutes.homePath());
                      } else {}
                    },
                  ),
                ),
              ),
            ),
             const SizedBox(
              height: 20,
            ),
            UnconstrainedBox(
              child: Container(
                height: 40,
                width: 220,
                alignment: Alignment.center,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(109, 111, 200, 1),
                    borderRadius: const BorderRadius.all(Radius.circular(30))),

                child: SizedBox.expand(
                  child: TextButton(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          const Text(
                            'CADASTRAR',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                    onPressed: () {
                      Get.offNamed(AppRoutes.signupPath());
                    },
                  ),
                ),
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
