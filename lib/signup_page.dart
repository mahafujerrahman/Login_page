import 'package:firebase/login_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset("images/123.png",width: 200,),
            SizedBox(height: 50),
            Text("Please Sign Up!",
              style: TextStyle(
                  fontSize: 40,fontWeight: FontWeight.bold),
            ),
            Text("Create your account",
            style: TextStyle(
              color: Colors.grey
            ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: "Email",
              ),

            ),
            SizedBox(height: 20,),
            TextFormField(decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              labelText: "Password",
            ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

              },
              child: Text('Sign Up'),

            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account ?"
                  ,
                  style: TextStyle(
                      color: Colors.grey
                  ),),
                TextButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  LoginPage()),
                  );
                },
                    child: Text("Log In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),))
              ],
            ),

          ],
        ),

      ),


    );
  }
}

