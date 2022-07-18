import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void login(String email, String Password) async{
    try{
      Response response = await post(
        Uri.parse('https://reqres.in/api/register'),
        body: {
          'email' : email,
          'password': Password,
        }
      );
      if(response.statusCode == 200){
        /*to recieve data from the web*/
        // var data = jsonDecode(response.body.toString());
        // print(data);
        print('account created sucessfully');
      }
      else{
        print('failed');
      }
    }
    catch(e){

      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 40,),
            GestureDetector(
              onTap: (() {
                login(emailController.text.toString(), passwordController.text.toString());
              }),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Center(
                  child: Text("Sign Up"),
                ),
              ),
            )

          ],
        ),
      ),
    );
    
  }
}