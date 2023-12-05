import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/common/widgets/error.dart';
import 'package:whatsappclone/featurs/auth/repository/screens/login_screen.dart';
import 'package:whatsappclone/featurs/auth/repository/screens/otp_screan.dart';

Route<dynamic>generateRoute(RouteSettings settings){
  switch(settings.name){
    case LoginScreen.routName :
      return MaterialPageRoute(builder: (context)=> const LoginScreen());
    case OtpScrean.routName :
      final verification = settings.arguments as String;
      return MaterialPageRoute(builder: (context)=>  OtpScrean(
        verificationId: verification,
      ));
    default :
      return MaterialPageRoute(builder: (context)=>const Scaffold(
        body: ErrorScreen(error: 'This page does not exist'),
      ));
  }
}