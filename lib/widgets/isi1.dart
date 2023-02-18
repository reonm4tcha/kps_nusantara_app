import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/models/Lainnya_req.dart';

class isi1 extends StatefulWidget {
  Lainnya_req lainnya_req;
  isi1({Key? key, required this.lainnya_req}) : super(key: key);

  @override
  State<isi1> createState() => isi1State(lainnya_req: lainnya_req);
}

class isi1State extends State<isi1> {
  Lainnya_req lainnya_req;
  isi1State({required this.lainnya_req});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lainnya_req.name,),
        backgroundColor: Color(0xff362FD9),
      ),
      body: Container(
        width: double.infinity,
        height: 90,
        color: Colors.black,
        child: Center(child: Text('Masih Tes', style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}
