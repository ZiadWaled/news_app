import 'package:flutter/material.dart';
import 'package:news__app/Screens/forth_screen.dart';

class ThirdScreen extends StatelessWidget {
   const ThirdScreen({
     super.key,
      required this.text, required this.description, required this.imageUrl
   });
 final String text;
 final String description;
 final String imageUrl;
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
                 '$imageUrl',
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

            child:  Align(
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                child: Column(children: [
                  // Text(
                      // "LONDON — Cryptocurrencies “have no intrinsic\n value” and people who invest in them should be\n prepared to lose all their money, Bank of England\n Governor Andrew Bailey said."),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                        description,style: const TextStyle(
                      fontSize: 18,
                    ),
                    ),),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                    text,style: const TextStyle(
                      fontSize: 18,
                    ),
                    )                  ),
                ]),
              ),
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