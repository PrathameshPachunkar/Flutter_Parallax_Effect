import 'package:flutter/material.dart';
import 'package:parallax_sensors_bg/parallax_sensors_bg.dart';

class prallaxEffect extends StatelessWidget {
  final String foreground;
  final String background;

  const prallaxEffect(
      {super.key, required this.background, required this.foreground});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
        width: 250,
        margin: EdgeInsets.only(left: 40,right: 0,top: 0,bottom: 0),
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 252, 252, 252),
            borderRadius: BorderRadius.circular(15)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Parallax(
              lockVerticalAxis: true,
              sensor: ParallaxSensor.accelerometer,
              layers: [
                Layer(
                  offset: const Offset(0, 150),
                  preventCrop: true,
                  imageFit: BoxFit.cover,
                  sensitivity: 10,
                  image: AssetImage(background),
                ),
                Layer(
                  sensitivity: 1,
                  child: Center(
                    child: Text(
                      foreground,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ]),
        ));
  }
}
