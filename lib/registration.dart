import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qrapp/login.dart';
import 'package:qrapp/regsuccess.dart';
import 'package:http/http.dart'as http;

class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  final _nameController = TextEditingController();
  final _rolNoController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  void register()async {
    print(_nameController.text);
    print(_rolNoController.text);
    print(_emailController.text);
    print(_passwordController.text);
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',

        },
        body: jsonEncode({
          'name': _nameController.text,
          'rollno': _rolNoController.text,
          'email': _emailController.text,
          'password': _passwordController.text,
        }));
    print('ddd$response');
    if (response.statusCode == 200) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ));
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('')));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Registra   tion',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Enter your Name'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                controller: _rolNoController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Roll Number'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Email'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Password'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 100,
              height: 30,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  ),
                  onPressed: () {
                    setState(() {
                      register();

                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Success(),));
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.teal, fontSize: 18),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
