import 'package:flutter/material.dart';
import 'package:mampir_foto/Screens/Login/components/background.dart';
import 'package:mampir_foto/Screens/Signup/signup_screen.dart';
import 'package:mampir_foto/components/already_have_an_account_acheck.dart';
import 'package:mampir_foto/components/rounded_button.dart';
import 'package:mampir_foto/components/rounded_input_field.dart';
import 'package:mampir_foto/components/rounded_password_field.dart';
import 'package:mampir_foto/Screens/home/home_screen.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _errorMessage = "";

  String _email;

  String _password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/Logo.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (text) {
                _email = text;
              },
            ),
            RoundedPasswordField(
              onChanged: (text) {
                _password = text;
              },
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                _errorMessage,
                style: TextStyle(color: Colors.red),
              ),
            ),
            RoundedButton(
                text: "LOGIN",
                press: () {
                  if (_email == "kelompok7@gmail.com" && _password == "12345") {
                    // ke halaman home
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  } else {
                    _errorMessage = "Email atau Password Salah";
                  }
                }
                // press: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) {
                //         return HomeScreen();
                //       },
                //     ),
                //   );
                // },
                ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
