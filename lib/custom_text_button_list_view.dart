import 'package:flutter/material.dart';

class CustomTextListView extends StatelessWidget {

  final void Function()? onPressed;

  const CustomTextListView({super.key,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(35)),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          children: [
            const Icon(Icons.filter_alt_outlined,
            color: Colors.white),
            TextButton(
              onPressed: onPressed,
              child: const Text(
                'Filter',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
class CustomTextButton1 extends StatelessWidget {
   const CustomTextButton1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
       color: Colors.white,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 1,
        ),
        child: const Text(
          'Recommended',
          style: TextStyle(
            color: Colors.black,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}

