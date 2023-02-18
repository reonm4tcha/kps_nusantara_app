import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/data/Lainnya_data.dart';
import 'package:ksp_nusantara_app/widgets/isi1.dart';

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
                final data = Lainnya_data[index];
                return GestureDetector(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.white,
                        ),
                        child: Center(
                          child: ListTile(
                            leading: Icon(Icons.square, size: 60,),
                            title: Text(
                              data.name,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        )
                      ),
                      Divider(
                        color: Colors.black,
                        height: 5,
                      )
                    ],
                  ),
                  onTap: (){
                    final route =
                    MaterialPageRoute(builder: (context){
                      return isi1(lainnya_req: data);
                    });
                    Navigator.push(context, route);
                  },
                );},
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(version),
              ),
            ),
          )
        ],
      ),
    );
  }
}