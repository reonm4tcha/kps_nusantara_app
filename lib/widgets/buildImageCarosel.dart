import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ksp_nusantara_app/data/ImageCarousel_Beranda.dart';

Widget buildImageCarosel(){
  return PageView.builder(
      itemCount: ImageCarousel_Beranda.length,
      itemBuilder: (context, pagePosition){
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(

          ),
          child:
          Image.asset(
            ImageCarousel_Beranda[pagePosition],
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        );
      }
  );
}