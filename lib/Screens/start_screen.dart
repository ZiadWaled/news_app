import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news__app/Screens/forth_screen.dart';
import 'package:news__app/Screens/third_screen.dart';

import '../Data/Cubits/GetNewsCubit/get_news_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () async {
                  context.read<GetNewsCubit>().getNews();
                },
                child: const Text("Get Updated News")),

            BlocBuilder<GetNewsCubit, GetNewsState>(
              builder: (context, state) {
                if (state is GetNewsInitial) {
                  return const Center(
                    child: Text("Please press the button to get news"),
                  );
                } else if (state is GetNewsLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is GetNewsSuccess) {
                  return Expanded(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              ' Lastes News',
                              style: GoogleFonts.nunitoSans(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),

                            Text(
                              'See All',
                              style: GoogleFonts.nunitoSans(
                                fontSize: 14,
                                color: const Color.fromARGB(255, 11, 4, 214),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_right_alt),
                              color: const Color.fromARGB(255, 11, 4, 214),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: state.response.articles.length,
                            itemBuilder: (context, index) {
                              print(state.response.articles[index].urlToImage
                                  .toString());
                              return GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ThirdScreen(
                                      text:  state.response.articles[index].author.toString() ??
                                          "",
                                      description: state.response.articles[index]
                                        .description.toString(), imageUrl:state
                                        .response.articles[index].urlToImage ??
                                        "https://media.istockphoto.com/id/1264074047/vector/breaking-news-background.jpg?s=612x612&w=0&k=20&c=C5BryvaM-X1IiQtdyswR3HskyIZCqvNRojrCRLoTN0Q=",
                                    )),);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(6),


                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(state
                                              .response.articles[index].urlToImage ??
                                              "https://media.istockphoto.com/id/1264074047/vector/breaking-news-background.jpg?s=612x612&w=0&k=20&c=C5BryvaM-X1IiQtdyswR3HskyIZCqvNRojrCRLoTN0Q="),
                                          fit: BoxFit.fitWidth,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              overflow:TextOverflow.clip ,
                                              state.response.articles[index].author ??
                                                  "",
                                              style: GoogleFonts.nunitoSans(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w900,
                                                  color:
                                                  Colors.white
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              overflow:TextOverflow.clip ,
                                              state.response.articles[index]
                                                  .description,
                                              style: GoogleFonts.nunitoSans(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(8),
                                            child: const Text(
                                              ' “I’m going to say this very bluntly again,” he added. “Buy them\n  only if you’re prepared to lose all your money.”',
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return const Center(
                    child: Text("Somethinge went wrone"),
                  );
                }
              },
            ),
          ],
        ));
  }
}