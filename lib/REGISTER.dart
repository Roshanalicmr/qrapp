import 'package:flutter/material.dart';
import 'package:qrapplication/login.dart';
import 'package:qrapplication/main.dart';
import 'package:qrapplication/qrpage.dart';

class Reg extends StatefulWidget {
  const Reg({super.key});

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 20,
            ),
            Text('Registration',style: TextStyle(fontSize: 30),),
            SizedBox(
              width: 100,
              height: 50,
            ),
            Container(
              width: 200,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: 'Enter your Name'
                ),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: 'Enter your Roll no'
                ),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: 'Enter your Email'
                ),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: 'Enter your Password'
                ),
              ),
            ),
            ElevatedButton(onPressed:() {
              Navigator.push(context,MaterialPageRoute(builder: (context)=> Log()));
            }, child: Text('REGISTER',style: TextStyle(color: Colors.black),),
              style: TextButton.styleFrom(backgroundColor: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}