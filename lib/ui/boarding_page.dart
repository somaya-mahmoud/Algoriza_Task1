import 'package:flutter/material.dart';
import 'package:task1_for_algoriza/reusable_components/button_2.dart';
import 'package:task1_for_algoriza/reusable_components/my_button.dart';
import 'package:task1_for_algoriza/reusable_components/my_image.dart';
import 'package:task1_for_algoriza/reusable_components/my_text.dart';
import 'package:task1_for_algoriza/ui/register_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingPage extends StatelessWidget {
  const BoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    @override
    void dispose() {
      controller.dispose();
    }
    return Scaffold(
      body:ListView(
        children:[ Column(
            children: [
              MyButton(
                  textColor: Colors.black,
                  buttonText: "Skip",
                  onClick: () {},
                  color: Colors.grey),
              SizedBox(
                height: 25,
              ),
              MyText(text: "7Krave", size: 40,textColor: Colors.teal),
              SizedBox(
                height: 25,
              ),
              MyImage(
                  image:"https://imageresizer.static9.net.au/xxJnTO0AZFBrlW8k5c7FZ8KXU48=/360x203/https%3A%2F%2Fprod.static9.net.au%2Ffs%2F098620f3-5d9d-49c0-98d1-4d5994b6d629"),
              SizedBox(
                height: 20,
              ),
               MyText(
                    text: "Get food delievery to your doorstep asap",
                    size: 30,
                  ),
              SizedBox(
                height: 15,
              ),
              MyText(
                  text:
                      "we have young and professional delievery team that will bring your food as soon as possible to your door step ",
                  textColor: Colors.black26,
                  size: 20,
                ),

              SizedBox(
                height: 15,
              ),
       Container(
        height: 105,
        child: Column(
          children: [
            SmoothPageIndicator(
              controller: controller,
              count: 2,
              effect: SlideEffect(
                  spacing: 8.0,
                  radius: 4.0,
                  dotWidth: 20.0,
                  dotHeight: 5.0,
                  paintStyle: PaintingStyle.stroke,
                  strokeWidth: 1.5,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.teal),
            ),
              SizedBox(height:12),
              Button_2(
                size: 18,
                  textColor: Colors.white,
                  buttonText: "Get Started",
                  onClick: () {

                  },
                  color: Colors.teal),
              SizedBox(height: 3,),
                Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(text: "Don't have an account?",size: 18,),
                        TextButton(onPressed: () {
                          }, child: TextButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterPage(),));
                          },
                          child:Text("Sign Up",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.teal[200],
                          ),),

                          )),

                      ],
                    ),


            ],
          ),

       ),
      ],
      ),
],
    ),
    );
  }
}
