import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup_page/Presentation/pages/Widgets/buttonCard.dart';

import 'OTP_screen.dart';
import 'home_page.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffCB202D),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: TextButton(onPressed: (){Navigator.push(context , MaterialPageRoute(builder: (context) => HomePage()));}, child: Text('Skip',  style: TextStyle(fontSize: 20, color: Colors.white)),))
        ],
      ),
      backgroundColor: Color(0xffCB202D),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
         SizedBox(height: MediaQuery.of(context).size.height* .4,),
        TextFormField(
          keyboardType: TextInputType.number,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
        hintText: "Enter your number",
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2.0),
          ),
        )
        ),
           const SizedBox(height: 10,),

            SizedBox(
              height: 60,
              child: Card(
                color: Colors.black,
                child: Center(child: Text('Send OTP', style: TextStyle(color: Colors.white, fontSize: 20),)),
              ),
            ),

            const SizedBox(height: 20,),
            Text('--------------------- or -----------------', style: TextStyle(color: Colors.white, fontSize: 20),),
            const SizedBox(height: 20,),

            buttonCard(cardText: 'Continue with Email', leadIcon: Icons.mail,),
            const SizedBox(height: 10,),
            Row(
              children: [
                Expanded(child: buttonCard(cardText: 'Facebook', leadIcon: Icons.facebook,)),
                Expanded(child: buttonCard(cardText: 'Google', leadIcon: CupertinoIcons.globe ,)),
              ],
            ),




        ],
            ),
      ),);
  }
}
