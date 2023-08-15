import 'package:flutter/material.dart';
import 'package:news__app/forth_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsetsDirectional.only(end: 20, bottom: 20),
        child: FloatingActionButton(
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50), // Set the border radius
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ForthScreen()),
            );
          },
          child: const Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 400 / 812,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                  'https://s3-alpha-sig.figma.com/img/1b25/3b61/593c0eac981b4da390568868d72bc803?Expires=1693180800&Signature=qG2VjKuWKcttyBAZ4v0LfigBwXfDNKA4tTFBNNGexBkqWyj0duB8j8TxEIISOFOlMrxBDmNBqdBWQ2ufCuT6UYYAbiUtcdCMLkN6T36ibcgsfLeaQbNKMcyvMabDi53RHJbfdKWjEy82tjjXLy28iFn2Re~mVi5CNtaZd63UVUmqWGSS3yWul9FrrEcpz9PiKU-4TNlieahU42yvFOmOuZAyD3IhqnYqPfzry2OEwbnzHnpn~TBxZZdbU~m4pdexhy~nWgCS8wJSJbXVHLVKr05I5fkIW7A6jhRsenj-fk~eDVp3XH-IoHz26GpnsvzpWGPbLeO0~SotdVkBmpmviQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                   fit: BoxFit.cover,
              ),

            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 120, 10, 5),
            height:
            MediaQuery.of(context).size.height * 438 / 812, // width: 50,
            width: double.infinity,

            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),

            child: const Align(
              alignment: Alignment.centerLeft,
              child: Column(children: [
                Text(
                    "LONDON — Cryptocurrencies “have no intrinsic\n value” and people who invest in them should be\n prepared to lose all their money, Bank of England\n Governor Andrew Bailey said."),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      "Digital currencies like bitcoin, ether and even dogecoin\n have been on a tear this year, reminding some\n investors of the 2017 crypto bubble in which bitcoin\n blasted toward 20,000, only to sink as low as 3,122\n a year later."),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      " Asked at a press conference Thursday about the\n rising value of cryptocurrencies, Bailey said: “They\n have no intrinsic value. That doesn’t mean to say\n people don’t put value on them, because they can\n have extrinsic value. But they have no intrinsic value"),
                ),
              ]),
            ),
          ),
          Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 290 / 375,
                height: MediaQuery.of(context).size.height * 141 / 812,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 214, 213, 213),
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: 'Sunday, 9 May 2021\n',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                            children: [
                              TextSpan(
                                text:
                                'Crypto investors should be\n prepared to lose all their\n money, BOE governor says\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: 'Published by Ryan Browne',
                                style: TextStyle(color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}