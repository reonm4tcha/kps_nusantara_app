import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/data/data.dart';
import 'package:ksp_nusantara_app/models/golongan.dart';
import 'package:ksp_nusantara_app/widgets/materi_card.dart';

class DetailMateriScreen extends StatelessWidget {
  const DetailMateriScreen({super.key, required this.tingkat});

  final Tingkat tingkat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tingkat.name),
      ),
      body: ListView.builder(
        itemCount: materiDetailHeaders.length,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MateriCard(
                  name: materiDetailHeaders[index],
                  imageUrl: icons[index],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FluentIcons.chevron_down_16_filled,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
