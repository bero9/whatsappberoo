import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
         onPressed: onPressed,
      //     style: ElevatedButton.styleFrom(
       color: Colors.grey,
    //   maximumSize: const  Size(double.infinity,50)
    // ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ));
  }
}
