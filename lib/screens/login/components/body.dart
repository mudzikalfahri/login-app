import 'package:flutter/material.dart';
import 'package:sign_in_up/constants.dart';
import 'package:sign_in_up/screens/components/roundedbutton.dart';
import 'package:sign_in_up/screens/register/register.dart';
import 'package:sign_in_up/screens/welcome/welcome.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              color: kBgColor,
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
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Text(
                          "Login ",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 14,
                              color: kTextLightColor,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "/",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 14,
                              color: kTextLightColor,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          " Register",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white60,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
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
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Text(
                          "Forgot your password?",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 14,
                              color: kTextLightColor,
                              fontWeight: FontWeight.w400),
                        ),
                        ButtonTheme(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.0,
                              horizontal: 8.0), //adds padding inside the button
                          materialTapTargetSize: MaterialTapTargetSize
                              .shrinkWrap, //limits the touch area to the button area
                          minWidth: 0, //wraps child's width
                          height: 0, //wraps child's height
                          child: FlatButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            // splashColor: Colors.red,
                            // textColor: Colors.white,
                            child: Text(
                              "Reset",
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                  fontSize: 14,
                                  color: kTextLightColor,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w400),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Welcome();
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25.0),
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
                        ButtonTheme(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.0,
                              horizontal: 8.0), //adds padding inside the button
                          materialTapTargetSize: MaterialTapTargetSize
                              .shrinkWrap, //limits the touch area to the button area
                          minWidth: 0, //wraps child's width
                          height: 0, //wraps child's height
                          child: FlatButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            // splashColor: Colors.red,
                            // textColor: Colors.white,
                            child: Text(
                              "Register",
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 14,
                                  color: kTextLightColor,
                                  fontWeight: FontWeight.w400),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Register();
                                  },
                                ),
                              );
                            },
                          ),
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
