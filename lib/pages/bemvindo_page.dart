import 'package:flutter/material.dart';

import '../appbar.dart';
import '../input.dart';
import '../scrollable_column.dart';

class BemVindoPage extends StatefulWidget {
  const BemVindoPage() : super();
  @override
  _BemVindoPage createState() => _BemVindoPage();
}

class _BemVindoPage extends State<BemVindoPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(color: Color(0xFFE5FDE3)),
        child: Form(
          key: _formKey,
          child: ScrollableColumn(children: [
            SizedBox(
              width: 100,
              height: 100,
            ),
            Image.asset(
              "assets/icons/PlantCare2.png",
              width: 200,
              height: 200,
            ),
            SizedBox(height: 10),
            SizedBox(height: 10),
            Container(
              width: 311,
              height: 70,
            ),
            SizedBox(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                backgroundColor: Color(0xFFE5FDE3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
              child: Text(
                "Entrar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF71A189),
                  fontSize: 25,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              onPressed: () {
                // Apenas navega para a página '/menu'
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/login',
                  (_) => false,
                );
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
              child: Text(
                "Registre-se",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF71A189),
                  fontSize: 25,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              onPressed: () {
                // Apenas navega para a página '/menu'
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/register',
                  (_) => false,
                );
              },
            ),
          ]),
        ),
      ),
    );
  }
}
