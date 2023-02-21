import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/data/data.dart';
import 'package:ksp_nusantara_app/screen/final_materi_screen.dart';

import '../data/icons.dart';
import '../models/sub_tingkat.dart';
import '../models/tingkat.dart';

class DetailMateriScreen extends StatelessWidget {
  DetailMateriScreen({super.key, required this.tingkat});

  final Tingkat tingkat;
  final List golongan = golonganList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tingkat.name),
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              itemCount: tingkat.header.length,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        dividerColor: Colors.transparent,
                      ),
                      child: ExpansionTile(
                        tilePadding: const EdgeInsets.all(8),
                        leading: SizedBox(
                          width: 50,
                          child: Image.asset(
                            icons[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                        title: Text(
                          tingkat.header[index],
                        ),
                        children: [
                          buildSubWidget(
                              context, tingkat.subTingkat[index], index),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Theme(
              data: Theme.of(context).copyWith(
                dividerColor: Colors.transparent,
              ),
              child: Row(
                children: [
                  Image.asset(
                    iconFormUjian,
                    width: 60.0,
                    height: 60.0,
                    fit: BoxFit.fill,
                  ),
                  const Text('Form Ujian'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSubWidget(
      BuildContext context, SubTingkat subTingkat, int index) {
    return Column(
      children: List.generate(
        subTingkat.subTingkatList.length,
        (index) => GestureDetector(
          onTap: () {
            final title = subTingkat.subTingkatList[index];
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FinalMateriScreen(
                        title: title,
                      )),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Text(
              subTingkat.subTingkatList[index],
            ),
          ),
        ),
      ),
    );
  }
}
