import 'package:flutter/material.dart';
import 'package:librarybook/page/EUR_page.dart';
import 'package:librarybook/page/GBP_page.dart';
import 'package:librarybook/page/KR_page.dart';
import 'package:librarybook/page/USD_page.dart';
import 'package:librarybook/page/japan_page.dart';
import 'package:librarybook/page/lao_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('แปลงสกุลเงิน')),
      body: ListView(
        children: [
          //เงินเยน
          Card(
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JapanPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/images/japan.png', width: 100.0,height:100.0,fit: BoxFit.cover),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('เยน', style: TextStyle(fontSize: 20.0)),
                          Text('JPY'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //เงินดอล
          Card(
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => USDPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/images/USD.png', width: 100.0,height:100.0,fit: BoxFit.cover),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ดอลลาร์สหรัฐ', style: TextStyle(fontSize: 20.0)),
                          Text('USD'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //เงินยูโร
          Card(
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EURPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/images/euro.png', width: 100.0,height:100.0,fit: BoxFit.cover),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ยูโร', style: TextStyle(fontSize: 20.0)),
                          Text('EUR'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //เงินกีบ
          Card(
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LaoPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/images/lao.png', width: 100.0,height:100.0,fit: BoxFit.cover),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('กีบ', style: TextStyle(fontSize: 20.0)),
                          Text('LAK'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //เงินวอน
          Card(
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KoreaPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/images/korea.png', width: 100.0,height:100.0,fit: BoxFit.cover),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('วอน', style: TextStyle(fontSize: 20.0)),
                          Text('KRW'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //เงินปอนอังกฤษ
          Card(
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GBPPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/images/GBP.png', width: 100.0,height:100.0,fit: BoxFit.cover),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ปอนด์สเตอร์ลิง', style: TextStyle(fontSize: 20.0)),
                          Text('GBP'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
