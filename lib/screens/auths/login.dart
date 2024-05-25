import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/ic_instagram.svg',width:280 ,),
          SizedBox(height: 40,),
          SizedBox(
            width: 370,
            child: TextFormField(
              controller: _email,
              decoration: InputDecoration(
                fillColor: Colors.grey,
                border: OutlineInputBorder(),
                hintText: "Phone number,email or username"
              )
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            width: 370,
            child: TextFormField(
              controller: _pass,
              decoration: InputDecoration(
                fillColor: Colors.grey,
                border: OutlineInputBorder(),
                hintText: "Password"
              )
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 255,),
              InkWell(onTap: (){
                
              },child: Text("Forgot Password ?",style: TextStyle(fontSize: 15,color: Colors.blue,fontWeight: FontWeight.bold),))
            ],
          ),
          SizedBox(height: 50,),
          Container(
            width: 370,
            height: 50,
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/home');
            }, child: Text("Log in",style: TextStyle(fontSize: 35,color: Colors.white),),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blueAccent)),),
          ),
          SizedBox(height: 40,),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account? ",style: TextStyle(fontSize: 20),),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text("sign up",style: TextStyle(color: Colors.blue,fontSize: 20),),
              )
            ],
          )
        ],
        
      ),),
    );
  }
}