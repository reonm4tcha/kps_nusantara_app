import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ksp_nusantara_app/data/ImageCarousel_Beranda.dart';

// Widget buildImageCarosel(){
//   return PageView.builder(
//       itemCount: ImageCarousel_Beranda.length,
//       itemBuilder: (context, pagePosition){
//         return Container(
//           width: double.infinity,
//           height: double.infinity,
//           decoration: BoxDecoration(
//
//           ),
//           child:
//           Image.asset(
//             ImageCarousel_Beranda[pagePosition],
//             width: double.infinity,
//             height: double.infinity,
//             fit: BoxFit.cover,
//           ),
//         );
//       }
//   );
// }

Widget buildImageCarosel(){
  return Container(
    width: double.infinity,
    height: double.infinity,
    child:
    CarouselSlider(
      items: [
        // for (int indexImage = 0; indexImage <= ImageCarousel_Beranda.length; indexImage++)
        Image.asset(
          ImageCarousel_Beranda[0],
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Image.asset(
          ImageCarousel_Beranda[1],
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Image.asset(
          ImageCarousel_Beranda[2],
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Image.asset(
          ImageCarousel_Beranda[3],
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Image.asset(
          ImageCarousel_Beranda[4],
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ],
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2)
      ),
    )
  );
}