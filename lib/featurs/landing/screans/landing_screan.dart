import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/colors.dart';
import 'package:whatsappclone/featurs/auth/repository/screens/login_screen.dart';

import '../../../common/widgets/custom_button.dart';
class landinScreean extends StatelessWidget {
  const landinScreean({super.key});
void navigateTologinScreen(BuildContext context){
  Navigator.pushNamed(context, LoginScreen.routName);
}
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),
              const Text("Welcome To  WhatsApp",style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
        
              ),),
               SizedBox(height:size.height/9),
              Image.asset("assets/bg.png",height: 340,width: 340,color: tabColor,),
              SizedBox(height:size.height/9),
              const  Padding(
                padding: EdgeInsets.all( 15.0),
                child:  Text("Read our Privacy policy.Tap'Agree and Continue'to accept the term of services"
                ,style: TextStyle(
                    color: Colors.grey,),
                textAlign: TextAlign.center,),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                width: size.width*0.75,
                child: CustomButton(text: "Agree And Continue", onPressed: ()=>navigateTologinScreen(context)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

