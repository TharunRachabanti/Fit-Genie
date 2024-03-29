import 'package:fit_genie/custom-widgets/welcome-slide.dart';
import 'package:fit_genie/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Container(
        //decoration: BoxDecoration(
        //image: DecorationImage(
        //image: AssetImage("assets/images/6.png"),
        //fit: BoxFit.cover,
        //),
        //),
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: double.infinity,
                  ),
                  items: [
                    WelcomeSlide(
                      image: "assets/images/img.jpg",
                      title: "SMART SHOPPING",
                      subtitle: "Online shop app with physical trial experience",
                    ),
                    WelcomeSlide(
                      image: "assets/images/x.jpg",
                      title: "BODY MEASUREMENTS",
                      subtitle: "This app provides full-body measurements",
                    ),
                    WelcomeSlide(
                      image: "assets/images/n.jpg",
                      title: "VIRTUAL TRIAL ROOM",
                      subtitle: "This provides a trial room experience",
                    ),

                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                child: Text("Getting Started",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: (){
                  Get.to(LoginScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
