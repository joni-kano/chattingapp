// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Phonetxtfield extends StatelessWidget {
  const Phonetxtfield({
    Key? key,
    required this.hint,
    required this.inputType,
  }) : super(key: key);
  final String hint;
  final inputType;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey,width:3),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          
        ),
        child: TextField(
          
          autocorrect: false,
          keyboardType: inputType,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.black38,
            ),
          ),
        ));
  }
}

class PhoneCodetxtfield extends StatefulWidget {
  const PhoneCodetxtfield({
    Key? key,
    required this.countrycode, 
  }) : super(key: key);
  final String countrycode;
  

  @override
  State<PhoneCodetxtfield> createState() => _PhoneCodetxtfieldState();
}

class _PhoneCodetxtfieldState extends State<PhoneCodetxtfield> {
  String codechosen2 = '234';
  List countrycodes = ['+234', '+445', '+786', '+987'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey,width:3),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Text(widget.countrycode),
            // DropdownButton(
            //     hint: const Text("+254"),
            //     icon: const Icon(Icons.arrow_drop_down),
            //     iconSize: 36,
            //     value: codechosen2,
            //     onChanged: (newcode) {
            //       setState(() {
            //         codechosen2 = newcode.toString();
            //       });
            //     },
            //     items: countrycodes.map((countrycode) {
            //       return DropdownMenuItem(value: countrycode, child: const Text("data"));
            //     }).toList())
          ],
        ));
  }
}

class Codetxtfield extends StatelessWidget {
  const Codetxtfield({
    Key? key,
    required this.number1,
  }) : super(key: key);
  final int number1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          width: 20,
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
          border: Border.all(color: Colors.grey,width:3),
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
          child: Center(
            child: Text(
              number1.toString(),
            ),
          )),
    );
  }
}
