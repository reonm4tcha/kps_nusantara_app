import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/data/data.dart';

import '../data/icons.dart';
import '../models/sub_tingkat.dart';
import '../models/tingkat.dart';
import 'final_materi_screen.dart';

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
                        textColor: const Color(0xff362FD9),
                        iconColor: const Color(0xff362FD9),
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
    if (subTingkat.subTingkatList.isEmpty) {
      return const Padding(
        padding: EdgeInsets.all(5.0),
        child: Text('Tidak ada data'),
      );
    }

    return Column(
      children: List.generate(subTingkat.subTingkatList.length, (index) {
        return ExpansionTile(
          textColor: const Color(0xff362FD9),
          iconColor: const Color(0xff362FD9),
          title: Text(subTingkat.subTingkatList[index].name),
          children: [
            buildSubWidget2(context, subTingkat.subTingkatList[index], index)
          ],
        );
      }),
    );
  }

  Widget buildSubWidget2(
      BuildContext context, SubTingkat2 subTingkat2, int index) {
    return Column(
        children: List.generate(
      subTingkat2.list.length,
      (index) => GestureDetector(
        onTap: () {
          final title = subTingkat2.name;
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FinalMateriScreen(
                      title: title,
                    )),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(subTingkat2.list[index]),
        ),
      ),
    ));
  }
}
