import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.photo_camera_rounded),
        title: SvgPicture.asset('assets/ic_instagram.svg'), // Replace with SvgPicture if needed
        centerTitle: true,
        actions: [
          Icon(Icons.favorite_outline),
          SizedBox(width: 20.0),
          Icon(Icons.send_sharp),
        ],
      ),
      body:Stack(
        children: [
       Column(
        children: [
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // Adjust the number of stories
              itemBuilder: (context, index) {
                final color = Colors.primaries[index % Colors.primaries.length];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CircleAvatar(
                    backgroundColor: color,
                    radius: 30.0, // Adjust the radius as needed
                    child: Text(
                      (index + 1).toString(), // Display story number
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        Expanded(child:
        ListView.builder(
          itemCount: 5,
          itemBuilder:(context,index){
          return Column(
            children: [
          SizedBox(height: 15,),
          Row(
            children: [
              SizedBox(width: 20,),
              CircleAvatar(backgroundImage:AssetImage('assets/ .jpg',),maxRadius: 20,),
              SizedBox(width: 10,),
              Text("username",style: TextStyle(fontSize: 20),),
              SizedBox(width: 200,),
              Icon(Icons.more_vert)
            ],
          ),
          SizedBox(height: 15,),
          Container(
            width: 400,
            height: 375,
            child: Image.asset('assets/mount.jpg',fit: BoxFit.cover,),
          ),
          SizedBox(height: 5,),
          Row(children: [
            SizedBox(width: 20,),
            Icon(Icons.favorite_outline,size: 30,),
            SizedBox(width: 20,),
            Icon(Icons.messenger_outline_rounded,size: 30,),
            SizedBox(width: 20,),
            Icon(Icons.send_sharp,size: 30,),
            SizedBox(width: 220,),
            Icon(Icons.save_sharp,size: 30)
          ],),
            ],
          );
        } )

      )],
      ),])
    );
  }
}
