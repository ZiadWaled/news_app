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
                  return const Center(
                    child: SpinKitCgircle(
                      color: Colors.blue, // لون المؤشر
                      size: 50.0, // حجم المؤشر
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
                                return AnimationConfiguration.staggeredList(
                                  position: index,
                                  duration: const Duration(milliseconds: 500),
                                  child: FadeInAnimation(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ThirdScreen(
                                              text: state.response.articles[index].author.toString(),
                                              description: state.response.articles[index].description.toString(),
                                              imageUrl: state.response.articles[index].urlToImage ??
                                                  "https://media.istockphoto.com/id/1264074047/vector/breaking-news-background.jpg?s=612x612&w=0&k=20&c=C5BryvaM-X1IiQtdyswR3HskyIZCqvNRojrCRLoTN0Q=",
                                            ),
                                          ),
                                        );
                                      },
                                      child: Stack(
                                        children: [
                                          // بقية الكود هنا
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
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