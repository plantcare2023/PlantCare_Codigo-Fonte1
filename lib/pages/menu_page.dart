import 'package:flutter/material.dart';
import '../scrollable_column.dart';

class MenuPage extends StatefulWidget {
  const MenuPage() : super();
  @override
  _MenuPage createState() => _MenuPage();
}

class _MenuPage extends State<MenuPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(color: Color(0xFF71A189)),
            child: Form(
                key: _formKey,
                child: ScrollableColumn(children: [
                  Column(children: [
                    IconButton(
                      icon: Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          '/bemvindo',
                          (_) => false,
                        );
                      },
                      padding: EdgeInsets.only(top: 20, left: 10),
                    ),
                    SizedBox(
                      width: 275,
                      height: 58,
                    ),
                    Text(
                      'Bem vindo,',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Montserrat Alternates',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    Text(
                      '\n\nao PlantCare.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Montserrat Alternates',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      width: 235,
                      height: 40,
                    ),
                    Text(
                      'Dicas de cuidados',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Montserrat Alternates',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              '/regaPageview',
                              (_) => false,
                            );
                          },
                          child: Container(
                            width: 77,
                            height: 65,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5FDE3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Image.asset(
                              'assets/icons/IconAgua.png',
                              color: Color(0xFF71A189),
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              '/luminosidadePageview',
                              (_) => false,
                            );
                            print('Imagem de pH clicada!');
                          },
                          child: Container(
                            width: 77,
                            height: 65,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5FDE3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Image.asset(
                              'assets/icons/ph_sun-light.png',
                              color: Color(0xFF71A189),
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              '/aduboPageview',
                              (_) => false,
                            );
                            print('Imagem de Planta clicada!');
                          },
                          child: Container(
                            width: 77,
                            height: 65,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5FDE3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Image.asset(
                              'assets/icons/IconPlant.png',
                              color: Color(0xFF71A189),
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Opções de plantas:',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Montserrat Alternates',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 226,
                      height: 900,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(children: [
                        Positioned(
                          left: 9,
                          top: 20,
                          child: Container(
                            child: GestureDetector(onTap: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                '/detalheCacto',
                                (_) => false,
                              );
                            }),
                            width: 208,
                            height: 51,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5FDE3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          top: 125,
                          child: Container(
                            child: GestureDetector(onTap: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                '/detalheSamambaia',
                                (_) => false,
                              );
                            }),
                            width: 206,
                            height: 50,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5FDE3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 8,
                          top: 228,
                          child: Container(
                            child: GestureDetector(onTap: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                '/detalheRosaVermelha',
                                (_) => false,
                              );
                            }),
                            width: 208,
                            height: 51,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5FDE3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 8,
                          top: 332,
                          child: Container(
                            child: GestureDetector(onTap: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                '/detalheCosteladeAdao',
                                (_) => false,
                              );
                            }),
                            width: 208,
                            height: 51,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5FDE3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 14,
                          top: 437,
                          child: Container(
                            child: GestureDetector(onTap: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                '/detalhePeperomia',
                                (_) => false,
                              );
                            }),
                            width: 202,
                            height: 51,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5FDE3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 14,
                          top: 758,
                          child: Container(
                            child: GestureDetector(onTap: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                '/detalheZamioculca',
                                (_) => false,
                              );
                            }),
                            width: 202,
                            height: 51,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5FDE3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 14,
                          top: 544,
                          child: Container(
                            child: GestureDetector(onTap: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                '/detalheBegonia',
                                (_) => false,
                              );
                            }),
                            width: 202,
                            height: 51,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5FDE3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 14,
                          top: 650,
                          child: Container(
                            child: GestureDetector(onTap: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                '/detalheFicusLyrata',
                                (_) => false,
                              );
                            }),
                            width: 202,
                            height: 51,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5FDE3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 92,
                            height: 92,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/ed3e/83ca/8d2ed2c42f3dfbbcabb7fef39f26313f?Expires=1702252800&Signature=FsyjQg0Jzip0Jia9PDl3zAPMpILZwZaGnGoCokPVsrdmh-ap3jb~iZVHo9iooBtH112D5bbp1TD6ZOwQtoyyTm1pUaSiPD4ctV-P6vsS7ngm~Z8FzH-YUbr073RsXQqrX-L1hMqEfgPUNPNRhFjSno1HcfT7ZJvgRwDuxClENh0SSHrZq-AjiXttKoswrrbg48pi98hgMOp53PP-mkOI8skU6TIXD6g~NisHdUZnRBrUsJny3u0GWPs6aAyoliElZLYJ43xk8ZMTmlsG4xjNGflSPVTLXR1YRCZB54y6TZd1zRUzUGFZPnIVaZKvKEptNM2CZ9oOBer6Se1JChCLBA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                fit: BoxFit.fill,
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 104,
                          child: Container(
                            width: 92,
                            height: 93,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/7d7c/cc2d/add7f3687c635739d8ed4270452962d0?Expires=1702252800&Signature=hV~dfj~j6jJGADHv6gvqUkTMuTMebqB-t7efMoBBPkBmIZ4mULPKskZhBU~wKEU8D3VQI92il~Lcp6wVPtGR70AuC1Yws~gnNeb36wK26-NLOQ1FLtycLg5i9TiT2HrU7C-uc9~KVXp74tacff2Xk3~CAZdBn0TO7YGy4pAkXa1nIHFQWhsiPwPcfifHDtADIhLjS1ylh5y4tK3UtRFNrGfBJT6J2P04v4P3azv7wbKg3MDwg1ji7OKqaTdwJ-THDjPMPUvBoeX3xYY~-8YenbRnJTJ4vCJoz0VmksJvvfdHf9HtZF3w5AphdUJCivjBp7lbg~AY-5MHzEQm3utVWQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                fit: BoxFit.fill,
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 208,
                          child: Container(
                            width: 92,
                            height: 93,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/3ff8/1d4f/3d4cd085d51eb32c0e333d56de0a1ad2?Expires=1702252800&Signature=MJbPlNyhEgs5td~Vcx95HWbc92o3YBfiMJmk32Xqh1mbmYuq1shmdqyD5-EI2bjlMJ9vTloZAbCHnGshBc0qKySgf-wJtoaDVAxsPw7~KFbdANxhnkHb3NIXu6uKjF5rPJ~4OMYeydypMoSnfjyF8iTtGFSClK40JhBqSOfX5l1q82nCNyu12ClXs04sYme4QzHaDIGgNK5EPdUGD1owGubE8P3G89YwodrKo8LBxfSAJ09Avs34UCahwSCve1BPqEpTR39iBH2adl353859f4n2xvNCkN8tGYeV1KAsIUrmf9LIfloOCYH6wjR0ICn8FX3h1jYTFCrwEniLd7TNYA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                fit: BoxFit.fill,
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 312,
                          child: Container(
                            width: 92,
                            height: 93,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/8f21/978c/e5426dd4773f775c9f80b5aa2a679869?Expires=1702252800&Signature=J25Q9GZDN5MdTzMFEKK9MShullPPnBeREw6ZkhcUC3dAGzBLs-zx0Tr8E7plCKZ1FesrQJqHzqPQqtFLty4XThkQvLvNTwwm6IKkufDBFI1FDbOoEIx8OHXuA0M5H655CKoBNENXlYn2dnn5OEkj49Uu7HllC8Nc8FowrSFyAZwnQt4aNWP~-DDpqP2bYiESJbemkcxHlW9rMu8x6xk-mQt3wKHEuNEs7Lv9NrB7bqOVZ28GJQhPcYt3As3h~lE93fi6DARupFKXVH8i2mg56VvwdJDOBPaLzd0cu3aplsV3eVGFSA-Z15L~XC4Akv0WTgNXgf6DJJbr61DEzSqmUg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                fit: BoxFit.fill,
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 417,
                          child: Container(
                            width: 92,
                            height: 92,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/69da/7357/1cee553e905458a7c110a35bf20817e2?Expires=1702252800&Signature=QCnlK2guwHyD3NFOTdX8H-pAVOJP-AZpoMSZ~UlpxbbxIVpGLnXSNdXkqbk13EXgHtakDKoVx8uVeiXLoOLuIA3nQu-Ag5DbC4lFCenIXPEvFwA8ibGmRVUkALnM2ntD0xJ-miwqgbfi~AhDNdbytvdQwfUImtKOdhLKaIM-Bz85PfcxVqAEJqSPeX6DoBoGkbSSPlo9pTis~4-pBgKrD8JziLd0m2cCgmP4WYRT~AGoML1usc~MiKWY63DH~wQzDnCY2vK4EtXNH6yjO~dWhom404jKW2Il2aE1wQDuMl~CEfvHx-juE22wI3kx3HtcKVIi8xOydW3gvLojN5fJ9w__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                fit: BoxFit.fill,
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 738,
                          child: Container(
                            width: 92,
                            height: 92,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/6f74/4774/c4551953f62233f4dc87d4591792da7b?Expires=1702252800&Signature=EkvFZ8IQEYnUdrpcLxB7~GfpX4vMkxwjwOUX0XyJhrQ~cBoW7OUDGrPeSo22GkCZQWGsWxGHErZKMdK8HwWh5BKo1t73uC9zGQmDFBZzvoANgldeoeM4w6IE8Qk999H-1aP5l0s4NlZxyn2Q~c37n02-kt1y0Am7-UNupxQH3CWJJU4WKzTIahBJ6TlQKRJtoG5wD4C41HIgfubZKwmkSpy4iw4FgI~sFMTC~qL~7itFRjWmQbBYQQjGDGXK35sYURelrZsqPOmrSo-cWF-aTaX4r~IBPKu8kA-O2ymXj448kDjp3BgLxJku9dZaoAnnQ-luj18DP3n-1ipIJLWnNA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                fit: BoxFit.fill,
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 631,
                          child: Container(
                            width: 92,
                            height: 92,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/4863/843f/5876b0a87bd5c77081e0803fe37d6f99?Expires=1702252800&Signature=k1PiPcYVnOzHFywpQZadf9IATQBopSGkjZZ3h7X1WJdwnvoKrVAzAGdAPgcCY9PIxHcLDYZ77bkt9Qr3hiqIyxB6UbkXgVP~yplptXa3j5fjyIw8LhfsmZBjCyifabgBNRPVQ1ZHxkcxC5iUhfVDgnMSk7Gwwu8JOHdLOVcNB7WGBA01JnYs8q4auTZaLgiuXeq0Wt7K6trkOiNCjVAWjsN2dYuOncjcj2sWl07mt0o7y-84QPQUTx5p2wOMcB-Kj8zWIIm7LZAHw9Omt8VaQPGMzmSG8yc0ezAmtrFUNWVlSA22fcyGiCMt2vi6OZADn80EfFZ2oGRxGOhpQsog3w__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                fit: BoxFit.fill,
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 524,
                          child: Container(
                            width: 92,
                            height: 92,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/3994/cc90/ac640d49ee51deb7b43ce3b0bf3d1d49?Expires=1702252800&Signature=qVXjc6LXhCmnfDVulVnjV942VjTDhZu2nAeDX7eyQhRDUnYf--RSJy10ifqkbJ1-Ta3G-Inic8kLBQUGblOtQjVKAUmH2TOriBJlAQtgWs8MPGv~1mJ6oMTmw3zcY7cNHiPAWdk-aZFToy9SToele~Hp23DN52~2bxDVexTjGXOUfb7frpppCTN9RYQpLuylKFhCuF0S0usUiJ4CiBIL0OliwbxOqlClCiNLT4Ytkg~-qi6gKSzuKmvDbGwqsVhl7ZRrSFjdyJo3bJmjHj7J8BO~FPTFrWHN-cKpK~udZwl7KEGmD25dU3dtv7WSxFbj1Wk3ImAJ-6kjSd3fX44OZw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                fit: BoxFit.fill,
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 130,
                          top: 38,
                          child: Text(
                            'Cacto',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4D4D4D),
                              fontSize: 13,
                              fontFamily: 'Montserrat Alternates',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 108,
                          top: 142,
                          child: Text(
                            'Samambaia',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4D4D4D),
                              fontSize: 13,
                              fontFamily: 'Montserrat Alternates',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 120,
                          top: 238,
                          child: Text(
                            'Rosa \n\n\nvermelha',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4D4D4D),
                              fontSize: 13,
                              fontFamily: 'Montserrat Alternates',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 112,
                          top: 342,
                          child: Text(
                            'Costela-de- \n\n\nadão',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4D4D4D),
                              fontSize: 13,
                              fontFamily: 'Montserrat Alternates',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 110,
                          top: 447,
                          child: Text(
                            ' Peperomia\n\n\n Scandens',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4D4D4D),
                              fontSize: 13,
                              fontFamily: 'Montserrat Alternates',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 106,
                          top: 562,
                          child: Text(
                            'Begonia-Rex',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4D4D4D),
                              fontSize: 13,
                              fontFamily: 'Montserrat Alternates',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 106,
                          top: 668,
                          child: Text(
                            'Ficus Lyrata',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4D4D4D),
                              fontSize: 13,
                              fontFamily: 'Montserrat Alternates',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 110,
                          top: 776,
                          child: Text(
                            'Zamioculca',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4D4D4D),
                              fontSize: 13,
                              fontFamily: 'Montserrat Alternates',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ])
                ]))));
  }
}
