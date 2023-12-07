import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../input.dart';
import '../scrollable_column.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage() : super();
  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();
  bool _agreeWithTermsAndConditions = false;

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
              SizedBox(
                width: 235,
                height: 79,
              ),
              Text(
                "Criar conta\n\n",
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
                "Seja bem vindo",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Montserrat Alternates',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: 311,
                height: 70,
              ),
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
              CustomInputField(
                keyboardType: TextInputType.visiblePassword,
                hintText: "Digite sua senha",
                obscureText: true,
                controller: _passwordConfirmationController,
                validator: (String? password) {
                  if (password == null) {
                    return null;
                  }
                  if (password != _passwordConfirmationController.value.text) {
                    return "Password is not confirmed";
                  }
                },
              ),
              SizedBox(height: 24),
              CustomCheckbox(
                label: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "Concordo com os termos e políticas",
                        style: TextStyle(
                          color: Color(0xFFa8a8a7),
                        ),
                      ),
                    ),
                  ],
                ),
                value: _agreeWithTermsAndConditions,
                onChanged: (checked) => setState(
                    () => _agreeWithTermsAndConditions = checked ?? false),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                    backgroundColor: Color(0xFF71A189),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)))),
                child: Text(
                  "Criar",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFE5FDE3),
                    fontSize: 25,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                onPressed: !_agreeWithTermsAndConditions
                    ? null
                    : () {
                        if (_formKey.currentState!.validate()) {
                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                            email: _emailController.value.text,
                            password: _passwordController.value.text,
                          )
                              .then((result) {
                            Navigator.of(context)
                                .pushNamedAndRemoveUntil('/menu', (_) => false);
                          }).catchError((Object exception) {
                            if (exception is FirebaseAuthException) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                        'Failed to register: ${exception.message}')),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                        'Unhandled register error ${exception}')),
                              );
                            }
                          });
                        }
                      },
              ),
              Expanded(
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Já tem uma conta?",
                    style: TextStyle(
                      color: Color(0xFFb8b8b8),
                    ),
                  ),
                  TextButton(
                    child: Text("Entre aqui"),
                    onPressed: () =>
                        {Navigator.of(context).pushNamed("/login")},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
