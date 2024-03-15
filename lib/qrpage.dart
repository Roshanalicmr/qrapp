import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrapplication/Login.dart';

class Qr extends StatefulWidget {
  const Qr({super.key});

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
          child: Column(
            children: [
              Icon(
                Icons.account_circle_rounded,
                color: Colors.white,
                size: 100.0,
              ),
              SizedBox(
                width: 100,
                height: 100,
              ),
              QrImageView(
                backgroundColor: Colors.white,
                data: '1234567890',
                version: QrVersions.auto,
                size: 200.0,
              ),
              SizedBox(
                width: 100,
                height: 50,
              ),
              ElevatedButton(onPressed:() {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> Log()));
              }, child: Text('Sign Out',style: TextStyle(color: Colors.black),),
                style: TextButton.styleFrom(backgroundColor: Colors.white),
              )
            ],
          )
      ),
    );
  }
}