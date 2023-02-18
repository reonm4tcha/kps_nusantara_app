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
      ListView(
        children : [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 550,
                color: Colors.black,
                child:
                ListView.builder(
                  itemCount: Lainnya_data.length,
                  itemBuilder: (context, index){
                    return Container(
                      margin: EdgeInsets.only(top: 10),
                      width: double.infinity,
                      height: 50,
                      color: Colors.white,
                    );
                    },
                ),
              ),
              SizedBox(
                height: 20,
              ),

          ],
        ),
        ]
      ),
    );
  }


}
