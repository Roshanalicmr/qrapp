import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Profile1 extends StatefulWidget {
  const Profile1({Key? key}) : super(key: key);

  @override
  State<Profile1> createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body:Center(
        child:Column(
          children: [
            SizedBox(height:200),
            CircleAvatar(
              radius: 40,
              child: Icon(
                Icons.person,
                size:40,
              ),
            ),
            Text(
              'diya',
              style: TextStyle(fontSize: 20, color: Colors.white ),
            ),
          Text(
            'flutter developer',
            style:TextStyle(fontSize: 10,  color: Colors.white),
          ),
         SizedBox(height:30,),
          ],
        )
    ),
    );
  }
}
