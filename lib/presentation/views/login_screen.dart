import 'package:first_app/presentation/views/Home_Screen.dart';
import 'package:first_app/presentation/views/widgets/CustomBoutton.dart';
import 'package:first_app/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  String _email = "";
  String _password = "";
  @override
  void initState() {
    _email = "";
    _password = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Text("First app")),
        body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/320014/pexels-photo-320014.jpeg"),
                        fit: BoxFit.cover
                        //image:DecorationImage(image:AssetImage("assets/background.jpg")
                        )),
                padding: const EdgeInsets.only(
                    top: 100, left: 40, right: 40, bottom: 20),

                //padding: const EdgeInsets.all(8.0),
                // padding: const EdgeInsets.symmetric(
                //horizontal: 20,
                // vertical: 100
                //),
                child: Column(children: [
                  Text("Log IN SCREEN ",
                      style: Theme.of(context).textTheme.titleLarge
                      // style: TextStyle(
                      //   fontFamily:"Montserrat",
                      //     color: Colors.black,
                      //     fontSize: 40,
                      //     fontWeight:
                      //     FontWeight.w800, //fontWeight: FontWeight.w700
                      //     letterSpacing: 1,
                      //     wordSpacing: 1),
                      ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "welcome to your first flutter application ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      color: Colors.pink,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 20),
                    child: CustomTextField(
                        KeyBoardType: TextInputType.emailAddress,
                        title: "Email",
                        onchanged: ((value) {
                          setState(() {
                            _email = value;
                          });
                        })),
                  ),
                  CustomTextField(
                    KeyBoardType: TextInputType.number,
                    title: "Password",
                    onchanged: ((value) {
                      setState(() {
                        _password = value;
                      });
                      //print("password$value");
                    }),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    enabled: (_email.isNotEmpty && _password.isNotEmpty)
                        ? true
                        : false,
                    title: "connexion",
                    onPressed: () {
                      // print(_email);
                      // print(_password);

                      //print("confirm");
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const HomeScreen()));
                    },
                  ),
                ]),
              ),
            )));
  }
}
