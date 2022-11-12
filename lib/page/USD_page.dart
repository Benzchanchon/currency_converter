import 'package:flutter/material.dart';
import 'package:librarybook/tranfer.dart';

import '../untils/converter.dart';

class USDPage extends StatefulWidget {
  const USDPage({Key? key}) : super(key: key);

  @override
  State<USDPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<USDPage> {
  var _feedbackText = '';
  final _controller = TextEditingController();
  void _handleclick(int i){
    var input = _controller.text;
    if(input==''){
      setState(() {
        _feedbackText = "กรุณาใส่จำนวนเงิน";
      });
      return;
    }
    var temp = double.tryParse(input);
    if(temp==null){
      setState(() {
        _feedbackText = "กรุณาใส่เฉพาะตัวเลข";
      });
      return;
    }
    switch(i){
      case 1:
        setState(() {
          _feedbackText = "$temp บาทเท่ากับ ${MyConverter.B2USD(temp)}ดอลลาร์สหรัฐ";
        });
        break;
    }
  }
  Widget _buildButton(String msg,int i){
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
          ),
          onPressed:(){_handleclick(i);},
          child: Text(msg,style: TextStyle(fontSize: 30))),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('แปลงสกุลเงินดอลลาร์สหรัฐ')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('แปลงจากสกุลเงินบาทเป็นสกุลเงินดอลลาร์สหรัฐ',style: TextStyle(fontSize: 40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/thai.png', width: 100.0,height:100.0,fit: BoxFit.cover),
                SizedBox(width: 30.0),
                Image.asset('assets/images/sorn.png', width: 100.0,height:100.0,fit: BoxFit.cover),
                SizedBox(width: 30.0),
                Image.asset('assets/images/USD.png', width: 100.0,height:100.0,fit: BoxFit.cover),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(
                  width: 5.0,
                  color: Colors.redAccent.shade200,
                ),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0,3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: _controller,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildButton("แปลงเป็นเงินดอลลาร์สหรัฐ",1),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('อัตราแลกเปลี่ยน 1 บาท = 0.0278 ดอลลาร์สหรัฐ',style: TextStyle(fontSize: 30),)
                    ],
                  ),
                ],
              ),
            ),
            Text(_feedbackText,style: TextStyle(fontSize: 40),)
          ],
        ),
      ),
    );
  }
}
