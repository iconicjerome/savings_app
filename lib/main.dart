import 'package:flutter/material.dart';
import 'package:new_app/page2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SavingsApp(),
  ));
}

class SavingsApp extends StatelessWidget {
  const SavingsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image(image: AssetImage('lib/asset/coin.png')),
              SizedBox(
                height: 35,
              ),
              Text(
                'Waste No More',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                'No more wasting money!!\n Introducing the easiest way to save money',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  height: 1.5,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              IconButton(
                  //to switch between screens
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return PageTwo();
                        },
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_outlined,
                    size: 50,
                    color: Colors.teal[300],
                  ))
            ],
          ),
        ));
  }
}
