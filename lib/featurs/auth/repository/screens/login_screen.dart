import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/colors.dart';
import 'package:whatsappclone/common/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  static const routName = './login_screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
final PhoneControler = TextEditingController();
Country?country;
  @override
  void dispose(){
  super.dispose();
  PhoneControler.dispose();
  }
  void pickCountry(){
    showCountryPicker(
      context: context,
      showPhoneCode: true, // optional. Shows phone code before the country name.
      onSelect: (Country  _country) {
        setState(() {
          country=_country;
        });

      },
    );
  }
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enter Your Phone Number"),
        elevation: 0,
        backgroundColor: backgroundColor,


      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('WhatsApp will need to verify your phon number.'),
              const SizedBox(height: 10,),
              MaterialButton(onPressed: pickCountry, child: Text('Pick Country!',style: TextStyle(color: Colors.blue),)),
              const SizedBox(height: 5,),
              Row(
                children: [
                  if(country!=null)
                    Text('+${country!.phoneCode}'),
        
        
                  const SizedBox(width: 10,),
                  SizedBox(width: size.width*0.7, child: TextField(
                    controller: PhoneControler,
                    decoration:const InputDecoration(
                      hintText: 'phoneNumber'
                    ),
                  ),      )
                ],
              ),
              SizedBox(height: size.height*0.6,),
              SizedBox(width: 90, child: MaterialButton(
                color:Colors.greenAccent,
                onPressed: (){},
               child:  Text('NEXT'),
        
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
