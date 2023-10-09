import 'package:flutter/material.dart';
import 'parallax.dart';
import 'list.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
     width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: Catalog.length,
          itemBuilder: ((context, index) {
            return SizedBox(
              height: 1,
              child: prallaxEffect(
                  background: Catalog[index].image,
                  foreground: Catalog[index].text),
            );
          })),
    );
  }
}
