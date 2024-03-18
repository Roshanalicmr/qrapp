import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Container(
                height:100,
                width: 100,
                child: Image.asset('images/man.png')),
            SizedBox(
              height: 50,
            ),
            QrImageView(
              data: '1234567890',
              version: QrVersions.auto,
              size: 200.0,
            ),
            SizedBox(height: 25,),
            ElevatedButton(
                onPressed:() {},
              child: Text('SCAN',style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(

                fixedSize: Size(100, 40),
                side: BorderSide(width: 3.0,color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
