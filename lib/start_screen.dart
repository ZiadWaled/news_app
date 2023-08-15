import 'package:flutter/material.dart';

import 'second_screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      body: SingleChildScrollView(
        child: Column(
          children: [
          Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(

            height: MediaQuery.of(context).size.height *90/800,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                  top: 40, start: 12, end: 12, bottom: 12),              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.28,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Text(
                            'discuse adidas',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Spacer(),
                          Icon(Icons.search)
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(Icons
                          .notification_add),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height *61/800,

          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: SizedBox(

              child: Row(
                children: [
                  Text(
                    'Latest News',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.keyboard_backspace,
                    color: Colors.blueAccent,
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height *272/800,

          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(10, (index) {
                return Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  margin: const EdgeInsets.only(right: 3),
                  child: Image.asset('assets/images/Frame 34.png',),
                );
              }),
            ),
          ),
        ),

        SizedBox(
          height: MediaQuery.of(context).size.height *47/800,

          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(20, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration:BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextButton(
                        onPressed: () {  },
                        child: const Text('healthy',
                          style: TextStyle(
                              color: Colors.white
                          ),),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),

        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: MediaQuery.of(context).size.height *328/800,

            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: List.generate(3, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Image.asset('assets/images/Frame 33.png',
                      fit: BoxFit.cover,
                    ),
                  );
                }),
              ),
            ),
          ),
        ),

          ],
        ),

      ),
      floatingActionButton:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    elevation: 0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  SecondScreen()),
                      );
                    },
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                    child: const Column(
                      children: [
                        Icon(Icons.home_outlined),
                        Text('home'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  FloatingActionButton(
                    elevation: 0,
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                    child: const Column(
                      children: [
                        Icon(Icons.favorite_border),
                        Text(
                          'favorite',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  FloatingActionButton(
                    elevation: 0,
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                    child: const Column(
                      children: [
                        Icon(Icons.emoji_emotions_outlined),
                        Text('profile'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}