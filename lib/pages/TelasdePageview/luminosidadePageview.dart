import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LuminosidadePageview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LuminosidadePageviewState();
  }
}

class _LuminosidadePageviewState extends State<LuminosidadePageview> {
  final controller = PageController();
  bool isLastPage = false;
  bool ismiddlePage = false;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 40),
          //Início da PageView.
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() => ismiddlePage = index == 1);
              setState(() => isLastPage = index == 2);
            },
            children: [
              //Início da página 01.
              Container(
                color: Color(0xFF71A189),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //Icone da seta "Voltar".
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
                    //Início da imagem da página 01.
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/Sol_SombraDica.png',
                        width: 250,
                        height: 250,
                      ),
                    ),
                    //Início do título da página 01.
                    Center(
                      child: const Text(
                        'Como saber se a planta é de sol ou      de sombra só olhando? ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat Alternates',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 16),
                    //Início da descrição da página 01.
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: const Text(
                        ' As plantas de sol possuem caules mais resistentes e lenhosos. As suas folhagens costumam ser menores, com cara de espinhos e podem possuir cores vibrantes. Já as plantas de sombra costumam ter suas folhas grandes, largas, finas na espessura e de coloração verde.      ',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Montserrat Alternates',
                        ),
                      ),
                    ),
                  ],
                ),
              ), //Fim da página 01.
              //Início da página 02.
              Container(
                color: Color(0xFF71A189),
                child: Column(
                  children: [
                    //Início da imagem da página 02.
                    Container(
                      child: Image.asset(
                        'assets/Dicaluminosidade.png',
                        width: 250,
                        height: 250,
                      ),
                    ),
                    //Início do título da página 02.
                    const Text(
                      'Não confunda ambiente de sombra com ambiente de breu.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat Alternates',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    //Início da descrição da página 02.
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: const Text(
                        'Para não correr o risco de sua planta estar num ambiente de completo breu, ao meio-dia, apague todas as luzes do cômodo e tente ler um livro neste ambiente. Se leu com tranquilidade, provavelmente esse ambiente é de sombra mas se teve dificuldade, tem grandes chances do ambiente ser de breu.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Montserrat Alternates',
                        ),
                      ),
                    ),
                  ],
                ),
              ), //Fim da página 02.
              //Início da página 03.
              Container(
                color: Color(0xFF71A189),
                child: Column(
                  children: [
                    //Início da imagem da página 03.
                    Container(
                      child: Image.asset(
                        'assets/JanelaDica.png',
                        width: 250,
                        height: 250,
                      ),
                    ),
                    //Início do título da página 03.
                    const Text(
                      'Tem lugar ideal para colocar plantas dentro de casa?',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat Alternates',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    //Início da descrição da página 03.
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: const Text(
                        'Para plantas que ficam dentro de casa, o vaso deve ficar a no máximo 3 metros da janela.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Montserrat Alternates',
                        ),
                      ),
                    ),
                  ],
                ),
              ), //Fim da página 03.
            ],
          ),
        ), //
        bottomSheet:
            ismiddlePage //Variável que representa a segunda página da Pageview.
                ? Container(
                    color: Color(0xFF71A189),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Início do botão "Anterior" da segunda página.
                        TextButton(
                          onPressed: () => controller.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          ),

                          child: const Text(
                            'Anterior',
                            style: TextStyle(
                              color: Color(0xFF71A189),
                            ),
                          ),
                          //Estilo do botão.
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xffD9D9D9),
                            fixedSize: const Size(90, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                        ),
                        //Início da animação do indicador de páginas.
                        Center(
                          child: SmoothPageIndicator(
                            controller: controller,
                            count: 3,
                            effect: ScrollingDotsEffect(
                              spacing: 10,
                              dotColor: Color(
                                  0xff808080), //Cor dos círculos das próximas páginas)
                              activeDotColor: Color(
                                  0xffffffff), //Cor do círculo da página que está sendo visualizada.
                            ),
                            onDotClicked: (index) => controller.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn),
                          ),
                        ),
                        //Início do botão "Próximo" da segunda página.
                        TextButton(
                          onPressed: () => controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          ),
                          child: const Text(
                            'Próximo',
                            style: TextStyle(
                              color: Color(0xFF71A189),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xffD9D9D9),
                            fixedSize: const Size(90, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : isLastPage
                    ? Container(
                        color: Color(0xFF71A189),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Início do botão "Anterior" da última página.
                            TextButton(
                              onPressed: () => controller.previousPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              ),

                              child: const Text(
                                'Anterior',
                                style: TextStyle(
                                  color: Color(0xFF71A189),
                                ),
                              ),
                              //Estilo do botão
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xffD9D9D9),
                                fixedSize: const Size(90, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17),
                                ),
                              ), //fim do estilo do botão
                            ),
                            //Início da animação do indicador de páginas.
                            Center(
                              child: SmoothPageIndicator(
                                controller: controller,
                                count: 3,
                                effect: ScrollingDotsEffect(
                                  spacing: 10,
                                  dotColor: Color(
                                      0xff808080), //Cor dos círculos de sinalização das próximas páginas
                                  activeDotColor: Color(
                                      0xffffffff), //Cor do círculo de sinalização que está sendo visualizado
                                ),
                                onDotClicked: (index) =>
                                    controller.animateToPage(index,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeIn),
                              ),
                            ),
                            //Início do botão "Sair" da última página.
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                  '/menu',
                                  (_) => false,
                                );
                              },

                              child: const Text(
                                'Sair',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),
                              ),
                              //Estilo do botão.
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xffed8787),
                                fixedSize: const Size(90, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        color: Color(0xFF71A189),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 118),
                              child: SmoothPageIndicator(
                                controller: controller,
                                count: 3,
                                effect: ScrollingDotsEffect(
                                  spacing: 10,
                                  dotColor: Color(
                                      0xff808080), //Cor dos círculos de sinalização das próximas páginas.
                                  activeDotColor: Color(
                                      0xffffffff), //Cor do círculo da página que está sendo visualizada.
                                ),
                                onDotClicked: (index) =>
                                    controller.animateToPage(index,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeIn),
                              ),
                            ),
                            //Início do botão "Próximo" da primeira página.
                            TextButton(
                              onPressed: () => controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              ),

                              child: const Text(
                                'Próximo',
                                style: TextStyle(
                                  color: Color(0xFF71A189),
                                ),
                              ),
                              //Estilo do botão.
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xffD9D9D9),
                                fixedSize: const Size(90, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ) //container do bootomSheet
        );
  }
}
