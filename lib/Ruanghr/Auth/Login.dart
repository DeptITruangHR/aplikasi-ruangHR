import 'package:app/Ruanghr/Auth/Template.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Template(
      title: "Login",
      subtitle: "Enter Username and Password",
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Colors.white,
        ),
        margin: EdgeInsets.fromLTRB(40, 20, 40, 100),
        child: Column(
          //isi child: Column
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 15),
              child: Column(
                children: <Widget>[
                  Image.asset('images/logo.png', width: 150, height: 150),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10, bottom: 8),
                width: 250,
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        fillColor: Color.fromRGBO(239, 243, 250, 100),
                        filled: true,
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0, style: BorderStyle.none),
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(28.0)),
                        )))),
            Container(
                margin: EdgeInsets.fromLTRB(26.0, 10, 26.0, 8),
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        fillColor: Color.fromRGBO(239, 243, 250, 100),
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0, style: BorderStyle.none),
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(28.0)),
                        )))),
            FlatButton(
                color: Colors.white,
                textColor: Color(0xFF1D6AFF),
                child: Text('Forgot Password?'),
                onPressed: () {
                  //Navigator.of(context).pushNamed(HomeScreen.tag);
                }),
            FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: Color(0xFF1D6AFF),
                textColor: Colors.white,
                child: Text('Log In'),
                onPressed: () {
                  //Navigator.of(context).pushNamed(HomeScreen.tag);
                }),
            Padding(
              padding: EdgeInsets.only(top: 50, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Don't Have an Account?",
                      style: TextStyle(color: Color(0xFF888888))),
                  FlatButton(
                      child: Text(
                        'Register Now',
                        style: TextStyle(color: Color(0xFF1D6AFF)),
                      ),
                      onPressed: () {
                        //Navigator.of(context).pushNamed(RegisterPage.tag);
                      }),
                ],
              ),
            ),
          ],
        ),

        //isi child: Column
      ),
    );
  }
}
