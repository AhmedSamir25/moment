import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.labelText, required this.keyboardType, required this.controller});
  final String labelText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      
      // cursorColor: appColor,
       controller: controller,
     
      decoration: InputDecoration(
        label: Text(labelText),   
        labelStyle:const TextStyle(color: Colors.black),     
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        focusedBorder: const OutlineInputBorder(
           borderRadius: BorderRadius.all(Radius.circular(24)),
          borderSide: BorderSide(color: Colors.blue,),
        )
      ),
      keyboardType: keyboardType,
    );
  }
}