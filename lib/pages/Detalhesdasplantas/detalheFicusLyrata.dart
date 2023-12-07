import 'package:flutter/material.dart';

class DetalheFicusLyrata extends StatelessWidget {
  const DetalheFicusLyrata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF71A189),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                '/menu',
                (_) => false,
              );
            },
            padding: EdgeInsets.only(top: 20, left: 10),
          ),
          Center(
            child: const Image(
              image: AssetImage("assets/ficusLyrata.png"),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFFE5FDE3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: FittedBox(
                child: Column(
                  children: [
                    Center(
                      child: const Text(
                        'Ficus Lyrata',
                        style: TextStyle(
                          fontSize: 60,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat Alternates',
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: 150,
                      width: 900,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5FDE3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xFF000000), // Black color
                          width: 1.0,
                        ),
                      ),
                      margin: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 25),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/IconInformacao.png",
                            height: 100,
                          ),
                          SizedBox(width: 12),
                          Text(
                            "Informação extra: De 2/3 horas de sol.",
                            style: TextStyle(
                              fontFamily: 'Montserrat Alternates',
                              fontSize: 37,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ), //container 01
                    SizedBox(height: 12),
                    Container(
                      height: 150,
                      width: 900,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5FDE3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xFF000000), // Black color
                          width: 1.0,
                        ),
                      ),
                      margin: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 25),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/IconSol.png",
                            height: 100,
                          ),
                          SizedBox(width: 12),
                          Text(
                            "Luminosidade: Meia-sombra.",
                            style: TextStyle(
                              fontFamily: 'Montserrat Alternates',
                              fontSize: 37,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ), //fim do container 02
                    SizedBox(height: 12),
                    Container(
                      height: 150,
                      width: 900,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5FDE3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xFF000000), // Black color
                          width: 1.0,
                        ),
                      ),
                      margin: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 25),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/IconAdubo.png",
                            height: 100,
                          ),
                          SizedBox(width: 12),
                          Text(
                            "Adubação: A cada 3 meses.",
                            style: TextStyle(
                              fontFamily: 'Montserrat Alternates',
                              fontSize: 37,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ), //fim do container 3
                    SizedBox(height: 12),
                    Container(
                      height: 150,
                      width: 900,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5FDE3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xFF000000), // Black color
                          width: 1.0,
                        ),
                      ),
                      margin: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 25),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/IconAgua1.png",
                            height: 100,
                          ),
                          SizedBox(width: 12),
                          Text(
                            "Rega: A cada dois dias.",
                            style: TextStyle(
                              fontFamily: 'Montserrat Alternates',
                              fontSize: 37,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ), //container 04
                    SizedBox(height: 12),
                    Container(
                      height: 150,
                      width: 900,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5FDE3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xFF000000), // Black color
                          width: 1.0,
                        ),
                      ),
                      margin: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 25),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/IconPoda.png",
                            height: 100,
                          ),
                          SizedBox(width: 12),
                          Text(
                            "Poda: A cada dois anos ",
                            style: TextStyle(
                              fontFamily: 'Montserrat Alternates',
                              fontSize: 37,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ), //container 05
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ); //Fim do scaffold
  }
}
