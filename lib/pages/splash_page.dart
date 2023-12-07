import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage();

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = new Timer(Duration(seconds: 1, milliseconds: 500), () {
      FirebaseAuth auth = FirebaseAuth.instance;
      User? currentUser = auth.currentUser;
      if (currentUser == null) {
        Navigator.of(context)
            .pushNamedAndRemoveUntil('/bemvindo', (_) => false);
      } else {
        Navigator.of(context)
            .pushNamedAndRemoveUntil('/bemvindo', (_) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5FDE3),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/icons/PlantCare2.png",
              width: 168,
              height: 168,
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}
