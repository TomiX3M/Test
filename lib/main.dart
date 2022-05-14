// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:fluid_onboard/save.dart';
import 'package:fluid_onboard/username.dart';
import 'package:flutter/material.dart';

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

// Future main() async {
//   runApp(Name());
//   await Username().init();
// }

// class Name extends StatefulWidget {
//   const Name({Key? key}) : super(key: key);

//   @override
//   State<Name> createState() => _NameState();
// }

// class _NameState extends State<Name> {
//   TextEditingController? controller;
//   TextEditingController? controller2;

//   @override
//   void initState() {
//     super.initState();
//     controller = TextEditingController();
//     controller2 = TextEditingController();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     controller!.dispose();
//     controller2!.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Name',
//       darkTheme: ThemeData.dark(),
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.grey,
//           appBar: AppBar(
//             title: Text('Name App'),
//           ),
//           body: Builder(
//             builder: (context) {
//               return SizedBox(
//                   child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: TextField(
//                       controller: controller,
//                       decoration: InputDecoration(
//                           hintText: 'First Name',
//                           filled: true,
//                           fillColor: Colors.white.withOpacity(0.3),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(25),
//                               borderSide: BorderSide(color: Colors.transparent))),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: TextField(
//                         controller: controller2,
//                         decoration: InputDecoration(
//                             hintText: 'Last Name',
//                             filled: true,
//                             fillColor: Colors.white.withOpacity(0.3),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(25),
//                                 borderSide: BorderSide(color: Colors.transparent))),
//                       )),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   ElevatedButton(
//                     onPressed: () async {
//                        Navigator.push(
//                           context, MaterialPageRoute(builder: (context) => SavePage()));
//                       await Username().setName(controller!.text.trim(), controller2!.text.trim());
                     
//                     },
//                     child: Text(
//                       'Save',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                           fontSize: 25),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                         minimumSize: Size(300, 50), shape: StadiumBorder()),
//                   )
//                 ],
//               ));
//             }
//           )),
//     );
//   }
// }






// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Retrieve Text Input',
//       home: MyCustomForm(),
//     );
//   }
// }

// // Define a custom Form widget.
// class MyCustomForm extends StatefulWidget {
//   const MyCustomForm({Key? key}) : super(key: key);

//   @override
//   _MyCustomFormState createState() => _MyCustomFormState();
// }

// // Define a corresponding State class.
// // This class holds the data related to the Form.
// class _MyCustomFormState extends State<MyCustomForm> {
//   // Create a text controller and use it to retrieve the current value
//   // of the TextField.
//   final myController = TextEditingController();

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     myController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Retrieve Text Input'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: TextField(
//           controller: myController,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         // When the user presses the button, show an alert dialog containing
//         // the text that the user has entered into the text field.
//         onPressed: () {
//           showDialog(
//             context: context,
//             builder: (context) {
//               return AlertDialog(
//                 // Retrieve the text the that user has entered by using the
//                 // TextEditingController.
//                 content: Text(myController.text[0].toUpperCase())
//               );
//             },
//           );
//         },
//         tooltip: 'Show me the value!',
//         child: const Icon(Icons.text_fields),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
           appBar: AppBar(
            title: Text('Send Values To Next Screen')
              ),
            body: Center(
              child: HomeScreen()
              )
            )
          );
  } }

class HomeScreen extends StatefulWidget {
 
  HomeScreenState createState() => HomeScreenState();
 
}

class HomeScreenState extends State<HomeScreen>{ 
 
  final name = TextEditingController();
  final phoneNumber = TextEditingController();
  final studentClass = TextEditingController();
 
  getItemAndNavigate(BuildContext context){
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondScreen(
            nameHolder : name.text[0].toUpperCase(),
            classHolder : studentClass.text[0].toUpperCase(),
            numberHolder : phoneNumber.text[0].toUpperCase()
        ))
      );
  }
 
  @override
 Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
 
             Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                  controller: name,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Enter Name Here'),
                )
              ),

              Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                  controller: studentClass,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Enter Class Here'),
                )
              ),

              Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                  controller: phoneNumber,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Enter Phone Number Here'),
                )
              ),
 
              RaisedButton(
                onPressed:()=> getItemAndNavigate(context),
                color: Color(0xffFF1744),
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Click Here To Send All Entered Items To Next Screen'),
              ),
 
            ],
          ),
        ));
  }
}
