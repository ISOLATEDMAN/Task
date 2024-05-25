import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController _email = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _username = TextEditingController();
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
                hintText: "Email"
              )
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            width: 370,
            child: TextFormField(
              controller: _name,
              decoration: InputDecoration(
                fillColor: Colors.grey,
                border: OutlineInputBorder(),
                hintText: "Full Name"
              )
            ),
          ),
          SizedBox(height: 20,),

          SizedBox(
            width: 370,
            child: TextFormField(
              controller: _username,
              decoration: InputDecoration(
                fillColor: Colors.grey,
                border: OutlineInputBorder(),
                hintText: "Username"
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

          SizedBox(height: 40,),
          Container(
            width: 370,
            height: 50,
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/home');
            }, child: Text("Sign up",style: TextStyle(fontSize: 35,color: Colors.white),),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blueAccent)),),
          ),
          SizedBox(height: 40,),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Alerdy an account? ",style: TextStyle(fontSize: 20),),
              InkWell(
                onTap:(){Navigator.pushNamed(context, '/login');},
                child: Text("log in",style: TextStyle(color: Colors.blue,fontSize: 20),),
              )
            ],
          )
        ],
        
      ),),
    );
  }
}