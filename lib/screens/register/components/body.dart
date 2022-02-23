import 'package:flutter/material.dart';
import 'package:sign_in_up/constants.dart';
import 'package:sign_in_up/screens/components/roundedbutton.dart';
import 'package:sign_in_up/screens/login/login.dart';
import 'package:sign_in_up/screens/welcome/welcome.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() {
    return _BodyState();
  }
}

class _BodyState extends State<Body> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var heading = 'Find the perfect freelance services';
    var data = 'Register once, Use it forever.';
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
            padding: EdgeInsets.only(top: 40),
            child: Container(
              color: kBgColor,
              width: size.width * 0.8,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: size.width * 0.5,
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
                              color: Colors.white60,
                              fontWeight: FontWeight.w400),
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
                              color: kTextLightColor,
                              fontWeight: FontWeight.w500),
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
                          hintText: "Your name here",
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
                    SizedBox(height: 5.0),
                    Row(
                      children: [
                        Checkbox(
                          value: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                          activeColor: Colors.black87,
                          checkColor: Colors.white,
                        ),
                        Container(
                          width: size.width * 0.6,
                          child: Text(
                            "By register, you agree to shop's Privacy Policy and Terms of Use.",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontSize: 12,
                                color: kTextLightColor,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    RoundedButton(
                        text: "Register",
                        border: Colors.black,
                        press: () {},
                        color: Colors.black,
                        textColor: Colors.white),
                    SizedBox(height: 25.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 14,
                              color: kTextLightColor,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 2.0),
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
                              "Login",
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
                                    return Login();
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
