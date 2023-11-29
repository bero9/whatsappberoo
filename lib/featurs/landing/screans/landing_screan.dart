import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/colors.dart';
class landinScreean extends StatelessWidget {
  const landinScreean({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),
              const Text("Welcome To Bero WhatsApp",style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,

              ),),
               SizedBox(height:size.height/9),
              Image.asset("assets/bg.png",height: 300,width: 300,color: tabColor,),
            ],
          ),
      ),
    );
  }
}

