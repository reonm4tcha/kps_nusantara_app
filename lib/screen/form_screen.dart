// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/tingkat.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key, required this.tingkat}) : super(key: key);

  final Tingkat tingkat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Ujian'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                tingkat.form,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
