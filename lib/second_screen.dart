import 'package:flutter/material.dart';
import 'package:news__app/custom_text_button_list_view.dart';
import 'package:news__app/third_screen.dart';

// ignore: must_be_immutable
class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey[150],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  top: 40, start: 12, end: 12, bottom: 12),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1 / 20,
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
                      Icon(Icons.close),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextListView(
                    onPressed: () {
                      scaffoldKey.currentState!
                          .showBottomSheet((context) => Container(
                                height: MediaQuery.of(context).size.height *
                                    300 /
                                    800,
                                color: Colors.white,
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                    start: 15,
                                    top: 33,
                                    end: 33,
                                    bottom: 15,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        const Text(
                                          'Filter',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Spacer(),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: TextButton(
                                              onPressed: () {},
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  const Icon(
                                                      Icons
                                                          .restore_from_trash_rounded,
                                                      color: Colors.black),
                                                  const SizedBox(width: 5,),
                                                  Text(
                                                    'Reset',
                                                    style: TextStyle(
                                                        color: Colors.grey[280],
                                                        fontSize: 23),
                                                  ),
                                                ],
                                              )),
                                        ),
                                      ]),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsetsDirectional.only(
                                          start: 15,
                                        ),
                                        child: Text('Sort By',
                                            style: TextStyle(fontSize: 20)),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CustomTextButton1(),
                                          CustomTextButton1(),
                                          CustomTextButton1(),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          CustomTextButton1(),
                                          CustomTextButton1(),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Center(
                                            child: Text(
                                              'SAVE',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                    },
                  ),
                  CustomTextListView(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  const ThirdScreen()),
                      );
                    },
                  ),
                  CustomTextListView(
                    onPressed: () {},
                  ),
                  CustomTextListView(
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "About 11,166,000 result for ",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        TextSpan(
                          text: 'COVID New Variant.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: List.generate(20, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Image.asset(
                      'assets/images/Frame 33.png',
                      fit: BoxFit.cover,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
