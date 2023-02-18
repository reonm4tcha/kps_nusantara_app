import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/data/Lainnya_data.dart';

class Lainnya extends StatefulWidget {
  const Lainnya({Key? key}) : super(key: key);

  @override
  State<Lainnya> createState() => _LainnyaState();
}

class _LainnyaState extends State<Lainnya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('LAINNYA'),
        centerTitle: true,
        backgroundColor: Color(0xff362FD9),
      ),
      body:
      Column(
        children: [
          Container(
            width: double.infinity,
            height: 550,
            child:
            ListView.builder(
              itemCount: Lainnya_data.length,
              itemBuilder: (context, index){
                return Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.black,
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      height: 3,
                    )
                  ],
                );},
            ),
          ),
        ],
      ),
    );
  }
}
