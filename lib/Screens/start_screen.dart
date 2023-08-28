import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news__app/Screens/third_screen.dart';
import '../Data/Cubits/GetNewsCubit/get_news_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            AnimatedButton(
              selectedTextColor: Colors.black,
              width:  MediaQuery.of(context).size.width/2,
              isReverse: true,
              text: 'Get Updated News',
                transitionType: TransitionType.LEFT_TO_RIGHT,
                backgroundColor: Colors.black,
                borderColor: Colors.white,
                borderRadius: 50,
                borderWidth: 2,
              textStyle: const TextStyle(
                color: Colors.green

              ),
              onPress: ()async {  context.read<GetNewsCubit>().getNews();},
            ),
            const SizedBox(
              height: 30,
            ),

            BlocBuilder<GetNewsCubit, GetNewsState>(
              builder: (context, state) {
                if (state is GetNewsInitial) {
                  return const Center(
                    child: Text("Please press the button to get news"),
                  );
                } else if (state is GetNewsLoading) {
                  return  const Center(
                    child: SpinKitCircle(
                      color: Colors.blue,
                      size: 50.0,
                    ),
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
                          child: AnimationLimiter(
                            child: ListView.builder(
                              itemCount: state.response.articles.length,
                              itemBuilder: (context, index) {
                                final article = state.response.articles[index];

                                return AnimationConfiguration.staggeredList(
                                  position: index,
                                  duration: const Duration(milliseconds: 500),
                                  child: SlideAnimation(
                                    verticalOffset: 50.0,
                                    child: FadeInAnimation(
                                      child: GestureDetector(
                                        onTap: () {
                                          // Handle the tap event
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                          padding: const EdgeInsets.all(15.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 2,
                                                blurRadius: 5,
                                                offset: const Offset(0, 3),
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                article.title,
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Text(
                                                article.description,
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              // Add other widgets here if needed
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            )

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