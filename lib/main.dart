import 'dart:async';
import 'dart:js';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login/firebase_options.dart';
import 'package:login/pages/Detalhesdasplantas/detalheBegonia.dart';
import 'package:login/pages/Detalhesdasplantas/detalheCacto.dart';
import 'package:login/pages/Detalhesdasplantas/detalheCosteladeAdao.dart';
import 'package:login/pages/Detalhesdasplantas/detalheFicusLyrata.dart';
import 'package:login/pages/Detalhesdasplantas/detalhePeperomia.dart';
import 'package:login/pages/Detalhesdasplantas/detalheRosaVermelha.dart';
import 'package:login/pages/Detalhesdasplantas/detalheSamambaia.dart';
import 'package:login/pages/Detalhesdasplantas/detalheZamioculca.dart';
import 'package:login/pages/TelasdePageview/regaPageview.dart';
import 'package:login/pages/TelasdePageview/aduboPageview.dart';
import 'package:login/pages/TelasdePageview/luminosidadePageview.dart';

import 'pages/login_page.dart';
import 'pages/bemvindo_page.dart';
import 'pages/menu_page.dart';
import 'pages/main_page.dart';
import 'pages/splash_page.dart';
import 'pages/register_page.dart';

FirebaseAnalytics? analytics;

FirebaseAnalyticsObserver? observer;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  if (kIsWeb) {
    await FirebaseAuth.instanceFor(app: app).setPersistence(Persistence.LOCAL);
  }
  analytics = FirebaseAnalytics.instanceFor(app: app);
  runApp(MyApp());
}

const mainColor = Color(0xFF4672ff);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'PlantCare',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(mainColor),
              minimumSize: MaterialStateProperty.all(
                Size.fromHeight(60),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
          ),
        ),
        navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: analytics!),
        ],
        initialRoute: '/',
        routes: {
          '/': (context) => SplashPage(),
          '/bemvindo': (context) => BemVindoPage(),
          '/login': (context) => LoginPage(),
          //'/main': (context) => MainPage(),
          '/register': (context) => RegisterPage(),
          '/menu': (context) => MenuPage(),
          '/regaPageview': (context) => RegaPageview(),
          '/luminosidadePageview': (context) => LuminosidadePageview(),
          '/aduboPageview': (context) => AduboPageview(),

          //Rotas das páginas de detalhes das plantas
          '/detalheCacto': (context) => DetalheCacto(),
          '/detalheSamambaia': (context) => DetalheSamambaia(),
          '/detalheRosaVermelha': (context) => detalheRosavermelha(),
          '/detalheCosteladeAdao': (context) => DetalheCosteladeAdao(),
          '/detalheFicusLyrata': (context) => DetalheFicusLyrata(),
          '/detalheBegonia': (context) => DetalheBegonia(),
          '/detalhePeperomia': (context) => DetalhePeperomia(),
          '/detalheZamioculca': (context) => DetalheZamioculca(),
        });
  }
}
