import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Login Form Application'),
          ),
          body: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
//------------- First Row ----------------------------
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: const Row(children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Name:',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Name',
                              hintText: 'Enter Your Name'),
                        ),
                      ),
                    ]),
                  ),
//----------------Second Row-------------------------
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: const Row(children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Password:',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                              hintText: 'Enter Your Name'),
                        ),
                      ),
                    ]),
                  ),
//-----------------------Third Row--------------------
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          shadowColor: Colors.blue,
                          onSurface: Colors.grey,
                          elevation: 8,
                        ),
                        child: const Text('Sign In'),
                      ))
                ],
              )),
          backgroundColor: Colors.lightGreenAccent,
        ),
      ),
    );