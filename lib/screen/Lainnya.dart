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
      body: Material(
        child: ListView(
          children : [
            Column(
              children: [
                // buildListLainnya()
                ListView.builder(
                    itemCount: Lainnya_data.length,
                    itemBuilder: (context, index){
                      final data = Lainnya_data[index];
                      Container(
                        width: double.infinity,
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.black12
                        ),
                        child:
                        Row(
                          children: [
                            Text(data.name)
                          ],
                        ),
                      );
                    }
                    )
              ],
            ),
          ]
        ),
      ),
    );
  }

//   Widget buildListLainnya(){
//     return ListView.builder(
//         itemCount: Lainnya_data.length,
//         itemBuilder: (context, index){
//           final data = Lainnya_data[index];
//           Container(
//             width: double.infinity,
//             height: 90,
//             decoration: BoxDecoration(
//               color: Colors.black12
//             ),
//             child:
//             Row(
//               children: [
//                 Text(data.name)
//               ],
//             ),
//           );
//         }
//     );
//   }
}
