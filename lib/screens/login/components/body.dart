import 'package:flutter/material.dart';
import 'package:sign_in_up/constants.dart';
import 'package:sign_in_up/screens/components/roundedbutton.dart';
import 'package:sign_in_up/screens/welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var heading = 'Find the perfect freelance services';
    var data = 'Welcome back, Login now.';
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 30,
            width: size.width,
            left: 0,
            child: Center(
              child: Image.asset(
                "assets/images/logofiverr.png",
                width: size.width * 0.3,
              ),
            ),
          ),
          Positioned(
            top: -60,
            left: 0,
            child: Image.asset(
              "assets/images/ellips.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/ellips2.png",
              width: size.width * 0.2,
            ),
          ),
          SingleChildScrollView(
            child: Container(
              width: size.width * 0.8,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: size.width * 0.6,
                      child: Text(
                        data,
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontSize: 26,
                            color: kTextLightColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      "Login / Register",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          fontSize: 14,
                          color: kTextLightColor,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: kPrimaryLightColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        style: TextStyle(fontSize: 14),
                        cursorColor: kPrimaryColor,
                        decoration: InputDecoration(
                          hintText: "youremail@email.com",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: kPrimaryLightColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(fontSize: 14),
                        cursorColor: kPrimaryColor,
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        Text(
                          "Forgot your password?",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 14,
                              color: kTextLightColor,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          "Reset",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 14,
                              color: kTextLightColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0),
                    RoundedButton(
                        text: "Login",
                        border: Colors.black,
                        press: () {},
                        color: Colors.black,
                        textColor: Colors.white),
                    SizedBox(height: 25.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 14,
                              color: kTextLightColor,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          "Register",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 14,
                              color: kTextLightColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
