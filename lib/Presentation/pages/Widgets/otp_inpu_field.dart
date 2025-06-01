import 'package:flutter/material.dart';

class OtpInpuField extends StatelessWidget {
  const OtpInpuField({super.key});


  OTPfield(){
    return SizedBox(
      height: 50,
      width: 40,
      child: TextFormField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade300,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
            )
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OTPfield(),
       const SizedBox(width: 5,),
        OTPfield(),
        const SizedBox(width: 5,),
        OTPfield(),
        const SizedBox(width: 5,),
        OTPfield(),
        const SizedBox(width: 5,),
        OTPfield(),
        const SizedBox(width: 5,),
        OTPfield(),
      ],
    );
  }
}










