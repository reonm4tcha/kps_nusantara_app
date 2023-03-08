import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/data/materi/data.dart';
import 'package:ksp_nusantara_app/data/font_style.dart';
import 'package:ksp_nusantara_app/screen/detail_materi_screen.dart';
import 'package:ksp_nusantara_app/widgets/materi_card.dart';

import '../models/materi/golongan.dart';

class MateriScreen extends StatelessWidget {
  const MateriScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List golongan = golonganList;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0597F2),
        title: const Text('TINGKATAN SABUK'),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0xff0597F2),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: ListView.builder(
              itemCount: golongan.length,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      children: [
                        Text(
                          golongan[index].name,
                          style: bFont20,
                        ),
                        buildSubData(context, golongan[index], index)
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSubData(BuildContext context, Golongan golongan, int index) {
    return Column(
      children: List.generate(
        golongan.tingkat.length,
        (index) => GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailMateriScreen(
                  tingkat: golongan.tingkat[index],
                ),
              ),
            );
          },
          child: MateriCard(
            name: golongan.tingkat[index].name,
            imageUrl: golongan.imageUrl,
          ),
        ),
      ),
    );
  }
}
