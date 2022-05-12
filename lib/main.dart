// ignore_for_file: prefer_const_constructors

import 'package:fluid_onboard/save.dart';
import 'package:fluid_onboard/username.dart';
import 'package:flutter/material.dart';
import "package:liquid_swipe/liquid_swipe.dart";
import "./body.dart";

// void main() => runApp(MaterialApp(
//       home: FluidSwipe(),
//       debugShowCheckedModeBanner: false,
//     ));

// class FluidSwipe extends StatefulWidget {
//   FluidSwipe({Key? key}) : super(key: key);

//   @override
//   State<FluidSwipe> createState() => _FluidSwipeState();
// }

// class _FluidSwipeState extends State<FluidSwipe> {

//   LiquidController controller = LiquidController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//       children: [
//         LiquidSwipe(
//           liquidController: controller,
//           //onPageChangeCallback: (,
//           enableSideReveal: true,
//           onPageChangeCallback: (index) => setState(() {}),
//           slideIconWidget: Icon(Icons.arrow_back_ios, color: Colors.white),
//           pages: [
//             Body(
//               color: Colors.pink.shade200,
//               imageUrl: 'images/1.png',
//               title: 'Instagram',
//               subTitle:
//                   'lorem ipsum dolor itun dono somo cana tale simo run tisha inat trany tini cono mine tallion iner ti coio',
//             ),
//             Body(
//               color: Colors.green,
//               imageUrl: 'images/1.png',
//               title: 'WhatsApp',
//               subTitle:
//                   'lorem ipsum dolor itun dono somo cana tale simo run tisha inat trany tini cono mine tallion iner ti coio',
//             ),
//             Body(
//               color: Colors.black,
//               imageUrl: 'images/1.png',
//               title: 'Tiktok',
//               subTitle:
//                   'lorem ipsum dolor itun dono somo cana tale simo run tisha inat trany tini cono mine tallion iner ti coio',
//             ),
//           ],
//         ),

//                 Positioned(
//             left: 25,
//             bottom: 5,
//             right: 35,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 TextButton(
//                   child: Text('SKIP',
//                       style: TextStyle(
//     fontFamily: 'Billy',
//     fontWeight: FontWeight.bold,
//     fontSize:30,
//     color: Colors.white,
//   )),
//                   onPressed: () {
//                     controller.jumpToPage(page: 2);
//                   },
//                 ),
//                 TextButton(
//                   child: Text('NEXT',
//                       style:TextStyle(
//     fontFamily: 'Billy',
//     fontWeight: FontWeight.bold,
//     fontSize:30,
//     color: Colors.white,
//   )),
//                   onPressed: () {
//                     final page = controller.currentPage + 1;

//                     controller.animateToPage(
//                       page: page > 3 ? 0 : page,
//                       duration: 800,
//                     );
//                   },
//                 )
//               ],
//             ))
//       ],
//     ));
//   }
// }

Future main() async {
  runApp(Name());
  await Username().init();
}

class Name extends StatefulWidget {
  const Name({Key? key}) : super(key: key);

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  TextEditingController? controller;
  TextEditingController? controller2;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller2 = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    controller!.dispose();
    controller2!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Name',
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text('Name App'),
          ),
          body: Builder(
            builder: (context) {
              return SizedBox(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                          hintText: 'First Name',
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.transparent))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: controller2,
                        decoration: InputDecoration(
                            hintText: 'Last Name',
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.3),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(color: Colors.transparent))),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                       Navigator.push(
                          context, MaterialPageRoute(builder: (context) => SavePage()));
                      await Username().setName(controller!.text.trim(), controller2!.text.trim());
                     
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 50), shape: StadiumBorder()),
                  )
                ],
              ));
            }
          )),
    );
  }
}

