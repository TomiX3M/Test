import 'package:fluid_onboard/username.dart';
import 'package:flutter/material.dart';

class SavePage extends StatefulWidget {
  const SavePage({Key? key}) : super(key: key);

  @override
  State<SavePage> createState() => _SavePageState();
}

class _SavePageState extends State<SavePage> {
  
  String firstInitial = Username().getfirstName().substring(0, 1);
  String secondInitial = Username().getlastName().substring(0, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Save Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Center(
            child: Text(
             firstInitial + secondInitial,
              style: TextStyle(fontSize: 30),
            ),
          ))
        ],
      ),
    );
  }
}
