import 'package:flutter/material.dart';

class ForthScreen extends StatelessWidget {
  const ForthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Hot Updates",
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 345 / 375,
                height: MediaQuery.of(context).size.height * 128 / 812,
                child: Image.network(
                  "https://s3-alpha-sig.figma.com/img/7306/b744/8fb4ff17f9105ef5ec0ece51fbfffd88?Expires=1693180800&Signature=YBHQyCI5hLvgpC2XrBAs9Y7o~1qpWitusqrTodvnoYMiRZLcP1F6jgFl7k~BXAJtFdpX49mWNHdzgFMPdRbO0XdW~izW-AquoMpuaJO9Lf8-PG5ESn~rCdzEzhl4wxGkhACKsjT18oZZO4fSsJ~Cx5Ht-OaJ2C3nrjR0ly7nn1k2GaO1NkuofBbBEWq3GIH4KobmvOIf1lbN4j8j~g1a1yMypfpE8MfewZnmgBzXeE1FjEVrKGe3MMpx6mhsodRWlTcgglmSc1E-mkqL-T0oQvh2xt5fjZIquvl6i3N4N16-vosWogpgyUokJXt~xDkEWnrYI2CHw81y1kQUOKwHCw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "Monday, 10 May 2021",
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(177, 5, 5, 1)),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "WHO classifies triple-mutant Covid variant from India as global health risk",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                width: double.infinity,
                child: RichText(
                    text: const TextSpan(
                        text:
                        "A World Health Organization official said Monday it is\n reclassifying the highly contagious triple-mutant Covid\n variant spreading in India as a “variant of concern,”\n indicating that it’s become a...",
                        style: TextStyle(
                          color: Colors.black,
                            fontSize: 15

                        ),
                        children: [
                          TextSpan(
                              text: "Read More", style: TextStyle(color: Colors.blue))
                        ])),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "Published by Berkeley Lovelace Jr.",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 345 / 375,
                height: MediaQuery.of(context).size.height * 128 / 812,
                child: Image.network(
                  "https://s3-alpha-sig.figma.com/img/1279/679f/20420e71f53008269e726db07501f440?Expires=1693180800&Signature=EOk-f0NXEib3r1bJ-5s2WmnZQXmKQ~knllK8IC-H-XTiMU7Md3ymvuEdLElmkoNwP47lp8QH474uaFSDmHdobKJ0QWMOw6jCf2FY5n8o9WHgN79DF28ml6Njwm76lt08eyjgafhw4f6zZQ8KczkfNe~d8H7hXhOJ~01KDMTPoOVKU3u-LfbL-sVIwPSfz9rmRCp1KQFl8m2ItyR9YbLG9mQmRp3OmL6275I00WC4OKjw1gnu0w5ylqxYS3VAa3UigNBJujU46yTwSkdNA6RA43t8qdBBCNu3tiSKpjc5BB1B~LsmTR-MYh07mBxv3qaFmav6b3InM56obqcwjFEUUA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "Sunday, 9 May 2021",
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(177, 5, 5, 1)),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "What to do if you're planning or attending a wedding during\n the pandemic",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                width: double.infinity,
                child: RichText(
                    text: const TextSpan(
                        text:
                        "They had the artsy, rustic venue, the tailored dress and a guest list including about 150 of their closest friends and family. But the pandemic had other plans, forcing Carly Chalmers and Mitchell Gauvin to make a difficult decision about their wedding... .",
                        style: TextStyle(
                            color: Colors.black,
                          fontSize: 17
                        ),
                        children: [
                          TextSpan(
                              text: "Read More", style: TextStyle(color: Colors.blue))
                        ])),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "Published by Kristen Rogers.",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}