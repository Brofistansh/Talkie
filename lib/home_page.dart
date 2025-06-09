import 'dart:math';

import 'package:flutter/material.dart';
import 'package:talkie_app/palette.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Talkie'),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: [
          Stack(
            //virtaul assistant picture
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle
                  ),
                ),
              ),
              Container(
                height: 123,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/virtualAssistant.png')
                  )
                ),
              )
            ],
          ),
          //chat bubble
           Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin: EdgeInsets.symmetric(horizontal: 40).copyWith(top: 30),
            decoration: BoxDecoration(
              border: Border.all(
                color: Pallete.borderColor,),
                borderRadius: BorderRadius.circular(20).copyWith(
                  topLeft: Radius.zero,),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Hello, How can I help you?', 
                style: TextStyle(
                color: Pallete.mainFontColor,
                fontFamily: 'Cera Pro',
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),),
            ),
           ),
           Container(
            padding: EdgeInsets.only(left:10),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10,left: 22),
             child: const Text('Here are a few features',
              style: TextStyle(
                  color: Pallete.mainFontColor,
                  fontFamily: 'Cera Pro',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
             )),
           ),
           //
        ],
      ),
    );
  }
}
