import 'package:flutter/material.dart';

class CustomFormTextField extends StatefulWidget {
  CustomFormTextField({this.hintText, this.onChanged });
  Function(String)? onChanged;
  String? hintText;



  @override
  State<CustomFormTextField> createState() => _CustomFormTextFieldState();
}

class _CustomFormTextFieldState extends State<CustomFormTextField> {
  bool obscureText=true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:obscureText,
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
      },
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        suffixIcon:togglepassword() ,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget togglepassword (){
    return IconButton( color: Colors.white,
        onPressed: ()
        {
          setState((){
            obscureText =! obscureText;
          });
        },
        icon: obscureText ? Icon(Icons.visibility ): Icon(Icons.visibility_off));
  }
}
