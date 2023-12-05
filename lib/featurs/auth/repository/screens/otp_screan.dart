import 'package:flutter/material.dart';

class OtpScrean extends StatefulWidget {
  static const String routName = '/otp_screan';
  final String verificationId;
  const OtpScrean({super.key, required this.verificationId});
  @override
  State<OtpScrean> createState() => _OtpScreanState();
}

class _OtpScreanState extends State<OtpScrean> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
