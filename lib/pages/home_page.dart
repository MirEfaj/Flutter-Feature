import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _output = '0';
  String _input = '0';
  String _ope = '0';
  double num1 = 0;
  double num2 = 0;

  void buttonPress(String value){
    print(value);
    setState(() {
      if(value == 'C'){
        _output = '0';
        _input = '0';
        _ope= '';
        num1 = 0;
        num2 = 0;
      }else if(value == '='){
        num2 = double.parse(_input);
        if(_ope == '+'){
          _output = (num1+num2).toString();
        }else if(_ope == '-'){
          _output = (num1-num2).toString();

        }else if(_ope == '*'){
          _output = (num1*num2).toString();

        }else if(_ope == '÷'){
          _output = (num2 !=0) ? (num1/num2).toString() : 'Error';

        }
        _input = _output;
      }else if(['+','-','*','÷'].contains(value)){
        num1 = double.parse(_input);
        _ope = value;
        _input= '';

      }else{
        if(_input == '0'){
          _input = value;
        }else{
          _input += value;

        }
        _output = _input;

      }
    });
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(25),
                child: Text(_output, style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),

            Row(
              children: [
                 buildButton(ntnName: '7', ontap: (){buttonPress('7');}),
                 buildButton(ntnName: '8', ontap: (){buttonPress('8');}),
                 buildButton(ntnName: '9', ontap: (){buttonPress('9');}),
                 buildButton(ntnName: '÷',color: Colors.orangeAccent, ontap: (){buttonPress('÷');}),
              ],
            ),
            Row(
              children: [
                buildButton(ntnName: '4', ontap: (){buttonPress('4');}),
                buildButton(ntnName: '5', ontap: (){buttonPress('5');}),
                buildButton(ntnName: '6', ontap: (){buttonPress('6');}),
                buildButton(ntnName: '*',color: Colors.orangeAccent, ontap: (){buttonPress('*');}),
              ],
            ),
            Row(
              children: [
                buildButton(ntnName: '1', ontap: (){buttonPress('1');}),
                buildButton(ntnName: '2', ontap: (){buttonPress('2');}),
                buildButton(ntnName: '3', ontap: (){buttonPress('3');}),
                buildButton(ntnName: '-',color: Colors.orangeAccent, ontap: (){buttonPress('-');}),
              ],
            ),
            Row(
              children: [
                buildButton(ntnName: 'C',color: Colors.red, ontap: (){buttonPress('C');}),
                buildButton(ntnName: '0', ontap: (){buttonPress('0');}),
                buildButton(ntnName: '=',color: Colors.green, ontap: (){buttonPress('=');}),
                buildButton(ntnName: '+',color: Colors.orangeAccent, ontap: (){buttonPress('+');}),
              ],
            ),
          ],
        ),
      )
    );
  }
}










class buildButton extends StatelessWidget {
  final String ntnName;
  final VoidCallback ontap;
  final Color ? color;
  const buildButton({
    super.key,
    required this.ntnName,
    required this.ontap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: ontap,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(25),
              backgroundColor: color ??  Colors.grey[800],
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            ),
            child: Text(ntnName,style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),)),
      ),
    );
  }
}
