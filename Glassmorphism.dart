//  want to use images
//  add assets folder in your project
//  add asstes path in your pubspec.yaml like this
assets:
    - assets/

import 'dart:ui';
import 'package:flutter/material.dart';

class Glassmorphism extends StatefulWidget {
  const Glassmorphism({super.key});

  @override
  State<Glassmorphism> createState() => _GlassmorphismState();
}

class _GlassmorphismState extends State<Glassmorphism> {
  List<String> assets = [
    'assets/img1.png',
    'assets/img2.png',
    'assets/img3.png',
    'assets/img4.png',
    'assets/img5.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
      // Glassmorphic AppBar
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
            preferredSize: const Size(double.maxFinite, 90),
            child: glassmorphism(
                height: 90,
                width: double.maxFinite,
                borderradius: 0,
                borderopacity: 0,
                beginopacity: 0.3,
                endingopacity: 0.35,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  automaticallyImplyLeading: false,
                  title: Text(
                    'Glassmorphism Design',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.8)),
                  ),
                ))),
        body: Stack(
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Image.asset(
                assets[0],
                height: double.maxFinite,
                fit: BoxFit.cover,
                color: Colors.red,
                colorBlendMode: BlendMode.darken,
              ),
            ),
            Center(
                child: glassmorphism(
              height: 250,
              width: 250,
              child: Center(
                child: Text(
                  '''Glassmorphism\nDesign''',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.8)),
                ),
              ),
            ))
          ],
        ),
        );
  }
// Glassmorphic Container
  ClipRRect glassmorphism(
      {required double height,
      required double width,
      double? borderradius = 25,
      double? borderwidth = 2,
      double? borderopacity = 0.6,
      double? beginopacity = 0.2,
      double? endingopacity = 0.3,
      Widget? child = const SizedBox()}) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderradius!),
                border: Border.all(
                    width: borderwidth!,
                    color: Colors.white.withOpacity(borderopacity!)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(beginopacity!),
                      Colors.white.withOpacity(endingopacity!)
                    ])),
            child: child),
      ),
    );
  }
}
// List of Images for checking AppBar transparency
         ListView.builder(
          itemCount: assets.length,
          itemBuilder: (context, index) {
            return Image.asset(assets[index]);
          },
        )
// Glasssmorphic Design 
Stack(
          alignment: Alignment.center,
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Image.asset(
                assets[1],
                fit: BoxFit.cover,
                height: double.maxFinite,
                color: Colors.teal,
                colorBlendMode: BlendMode.darken,
              ),
            ),
            Positioned(
                top: 100,
                child: glassmorphism(
                    height: 80,
                    width: 300,
                    borderradius: 10,
                    child: const Center(
                      child: Text(
                        'LEARN TO CREATE DESIGNS',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ))),
                    Positioned(
                      top: 190,
                      child:glassmorphism(
                    height: 300,
                    width: 300,
                    borderradius: 10,
                    child: const Center(
                      child: Text(
                        'Glass\nMorphism',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 55),
                      ),
                    )) ),
                    Positioned(
                      top: 500,left: 30,
                      child: glassmorphism(height: 80, width: 80,borderradius: 10,
                    child: const Icon(Icons.android,size: 60,color: Colors.green,))),
                     Positioned(
                      top: 500,
                      child: glassmorphism(height: 80, width: 80,borderradius: 10,
                    child: const Icon(Icons.apple,size: 60,color: Colors.black,))),
                    Positioned(
                      top: 500,
                      right: 30,
                      child: glassmorphism(height: 80, width: 80,borderradius: 10,
                    child: const Icon(Icons.table_chart_sharp,size: 60,color: Colors.amber,))),
                    Positioned(
                      top: 590,
                      child: glassmorphism(height: 80, width: 290,
                    borderradius: 10,child: const Center(
                      child:Text(
                        'Glassmorphism',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ), 
                    )))
          ],
        )
