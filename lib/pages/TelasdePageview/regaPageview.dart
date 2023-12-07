import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RegaPageview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegaPageviewState();
  }
}

class _RegaPageviewState extends State<RegaPageview> {
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
                        'assets/InterrogacaoDicaRega.png',
                        width: 250,
                        height: 250,
                      ),
                    ),
                    //Início do título da página 01.
                    Center(
                      child: const Text(
                        'Como saber se a planta precisa ser\n regada?',
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
                        'Com a ponta do dedo, esfregue o substrato da planta. Se o dedo sair sujo, o solo ainda está úmido e não precisa receber água mas se o dedo sair limpo, o solo já está seco e está na hora de regar novamente sua plantinha.',
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
                        'assets/RelogioDicasRega.png',
                        width: 250,
                        height: 250,
                      ),
                    ),
                    //Início do título da página 02.
                    const Text(
                      'Tem horário certo para regar as\n plantas?',
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
                        'Horário certo não tem mas o meio-dia é o pior horário para regar as plantas, pois é quando o solo está mais quente e a água evapora mais rapidamente. Os melhores horários são o início da manhã e o fim da tarde.',
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
                        'assets/RegadorDicasRega.png',
                        width: 250,
                        height: 250,
                      ),
                    ),
                    //Início do título da página 03.
                    const Text(
                      'E como rega?',
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
                        'Quando for regar as plantas, mire sempre na terra e não nas folhagens. As folhagens só devem ser regadas nos dias secos e que já tenham sido regadas corretamente, recebendo a água da rega diretamente no seu solo.',
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
