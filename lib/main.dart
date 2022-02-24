import 'package:flutter/material.dart';

late TextEditingController userNameController;
late TextEditingController passwordController;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Screen',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(secondary: Colors.deepOrangeAccent[600])),
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Login Screen",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),),
          body: const LoginScreen()),

    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _loginScreen(context);
  }
}

Widget _loginScreen (BuildContext context)
{
  final userNameField = TextField(
    obscureText: false,
    //maxLength: 20,
    decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        prefixIcon: const Icon(Icons.person),
        hintText: "User name",
        border:  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
    ),
  );

  final passwordField = TextField(
    obscureText: true,
    obscuringCharacter : '*',
    //maxLength: 20,
    decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        prefixIcon: const Icon(Icons.lock),
        hintText: "Password",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
    ),
  );


  final loginButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.black,
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {

      },

      child: const Text("Login",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),),
    ),
  );


  final registerButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.red,
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {

      },

      child: const Text("Register",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),),
    ),
  );


  return Center(
    child: Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("images/password.jpg"),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

           /* CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("images/password.jpg"),
            ),*/

            const SizedBox(height: 10.0),
            userNameField,

            const SizedBox(height: 5.0),
            passwordField,

            const SizedBox(height: 5.0),
            loginButton,

            const SizedBox(height: 5.0),
            registerButton


          ],
        ),
      ),
    ),
  );



}
