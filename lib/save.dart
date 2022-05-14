// import 'package:fluid_onboard/username.dart';
// import 'package:flutter/material.dart';

// class SavePage extends StatefulWidget {
//   const SavePage({Key? key}) : super(key: key);

//   @override
//   State<SavePage> createState() => _SavePageState();
// }

// class _SavePageState extends State<SavePage> {
  
//   String firstInitial = Username().getfirstName().substring(0, 1);
//   String secondInitial = Username().getlastName().substring(0, 1);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Save Page'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//               child: Center(
//             child: Text(
//              firstInitial + secondInitial,
//               style: TextStyle(fontSize: 30),
//             ),
//           ))
//         ],
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// class AbegWork extends StatefulWidget {
//   const AbegWork({ Key? key }) : super(key: key);

//   @override
//   State<AbegWork> createState() => _AbegWorkState();
// }

// class _AbegWorkState extends State<AbegWork> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Abeg Work'),
//       ),
//       body: Center(
//         child: Text(myController.text[0].toUpperCase())
//       ),
//     );
//   }
// }


// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {

  final  nameHolder ;
  final  classHolder ;
  final  numberHolder ;

  SecondScreen({
  Key? key, @required this.nameHolder, 
  this.classHolder, 
  this.numberHolder}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  goBack(BuildContext context){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Activity Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Center(child:
          Text('Student Name = ' + widget.nameHolder,
            style: TextStyle(fontSize: 22), 
            textAlign: TextAlign.center,)),

        Center(child:
          Text('Student Class = ' + widget.classHolder,
            style: TextStyle(fontSize: 22), 
            textAlign: TextAlign.center,)),

        Center(child:
          Text('Student Phone Number = ' + widget.numberHolder,
            style: TextStyle(fontSize: 22), 
            textAlign: TextAlign.center,)),

          RaisedButton(
            onPressed: ()=> goBack(context),
            color: Colors.lightBlue,
            textColor: Colors.white,
            child: Text('Go Back To Previous Screen'),
          )])
    );
  }
}
