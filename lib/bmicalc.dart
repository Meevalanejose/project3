import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
          title: Text('Bmi Calculator'),),
      backgroundColor: Colors.teal,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),),
        TextField(
          controller: height,
      decoration: InputDecoration(filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(),
      hintText: 'height',hintStyle: TextStyle(color: Colors.black)
        ),),
        SizedBox(height: 40),
        TextField(
          controller: weight,
    decoration: InputDecoration(filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(),
    hintText: 'weight',hintStyle: TextStyle(color: Colors.black)
        ),),
        TextButton(onPressed: (){calculate();}, child: Text('calculate',style: TextStyle(fontSize: 25),)),
        Text('Result')
      ],),
    );
  }
}
