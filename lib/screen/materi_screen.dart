import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/data/data.dart';
import 'package:ksp_nusantara_app/data/font_style.dart';
import 'package:ksp_nusantara_app/models/golongan.dart';
import 'package:ksp_nusantara_app/widgets/materi_card.dart';

class MateriScreen extends StatelessWidget {
  const MateriScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TINGKATAN SABUK'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: golonganList.length,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  golonganList[index].name,
                  style: bFont20,
                ),
                buildSubData(golonganList[index], index)
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildSubData(Golongan golongan, int index) {
    return Column(
      children: List.generate(
        golongan.tingkat.length,
        (index) => MateriCard(
          name: golongan.tingkat[index],
          imageUrl: 'assets/image/logo.jpg',
        ),
      ),
    );
  }
}
