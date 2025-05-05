// ignore_for_file: prefer_const_constructors

//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Counter value: $_counter'),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    "welcom",
                    style: TextStyle(fontSize: 33, fontFamily: "myfont"),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SvgPicture.asset(
                    "assets/icons/chat.svg",
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.purple),
                      padding: WidgetStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "login",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/signup");
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(Colors.purple[100]),
                      padding: WidgetStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(fontSize: 17, color: Colors.grey[850]),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 0,
                child: Image.asset(
                  "assets/images/signup_top.png",
                  width: 85,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset("assets/images/main_bottom.png", width: 55),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
