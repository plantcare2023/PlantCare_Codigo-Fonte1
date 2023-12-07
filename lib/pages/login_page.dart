import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/pages/bemvindo_page.dart';

import '../input.dart';
import '../scrollable_column.dart';

class LoginPage extends StatefulWidget {
  const LoginPage() : super();
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMeChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(color: Color(0xFFE5FDE3)),
            child: Form(
              key: _formKey,
              child: ScrollableColumn(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 235,
                        height: 79,
                      ),
                      Text(
                        "Olá\n\n",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'Montserrat Alternates',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Bem vindo de volta",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'Montserrat Alternates',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 203, height: 51),
                      CustomInputField(
                        keyboardType: TextInputType.emailAddress,
                        hintText: "Email@email.com",
                        controller: _emailController,
                        validator: (String? email) {
                          if (email == null) {
                            return null;
                          }
                          bool emailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(email);
                          return emailValid ? null : "Email is not valid";
                        },
                      ),
                      SizedBox(height: 24),
                      CustomInputField(
                        keyboardType: TextInputType.visiblePassword,
                        hintText: "Digite sua senha",
                        obscureText: true,
                        controller: _passwordController,
                        validator: (String? password) {
                          if (password == null) {
                            return null;
                          }
                          if (password.length < 6) {
                            return "Password is too short";
                          }
                        },
                      ),
                      SizedBox(height: 24),
                      CustomCheckbox(
                        labelText: "Remember me",
                        value: _rememberMeChecked,
                        onChanged: (checked) => setState(
                            () => _rememberMeChecked = checked ?? false),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Esqueci a",
                            style: TextStyle(
                              color: Color(0xFFb8b8b8),
                            ),
                          ),
                          TextButton(
                            child: Text("Senha"),
                            onPressed: () =>
                                {Navigator.of(context).pushNamed("/register")},
                          ),
                        ],
                      ),
                      SizedBox(height: 32),
                      SizedBox(
                        width: 311,
                        height: 70,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 30),
                            backgroundColor: Color(0xFF71A189),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)))),
                        child: Text(
                          "Entrar",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFE5FDE3),
                            fontSize: 25,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                              email: _emailController.value.text,
                              password: _passwordController.value.text,
                            )
                                .then((result) {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  '/menu', (_) => false);
                            }).catchError((Object exception) {
                              if (exception is FirebaseAuthException) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          'Failed to auth: ${exception.message}')),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          'Unhandled auth error ${exception}')),
                                );
                              }
                            });
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
