import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, this.title, required this.onchanged,required this.KeyBoardType});
  final String? title;
  final Function(String) onchanged;
  final TextInputType KeyBoardType;
// on ne peut pas passer en parametre deu constructor
// {}the name of varaible was written title:"hddfhj"

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      onChanged: onchanged,
      cursorColor: Colors.black,
      style: const TextStyle(color: Colors.grey),
      decoration: InputDecoration(
        filled: true,
        label: Text(title ?? "Email"),
        labelStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        hintText: title,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey)),
        enabledBorder:
            const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
        disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange)),
      ),
    );
  }
}
