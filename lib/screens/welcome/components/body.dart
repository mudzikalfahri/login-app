import 'package:flutter/material.dart';
import 'package:sign_in_up/constants.dart';
import 'package:sign_in_up/screens/components/roundedbutton.dart';
import 'package:sign_in_up/screens/welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var heading = 'Work remotely with client or company';
    var data =
        'In 2021, many workers are working from home during pandemix. That can be set up by our app. Register now and get all the features.';
    return Background(
        child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/images/logo.png",
          ),
          Image.asset(
            "assets/images/char.png",
            height: size.height * 0.4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              heading,
              textAlign: TextAlign.center,
              // ignore: prefer_const_constructors
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 28, color: kTextColor),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              data,
              textAlign: TextAlign.center,
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 12, color: kTextLightColor),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          RoundedButton(
            text: 'Register Now',
            press: () {},
            color: kPrimaryColor,
            textColor: Colors.white,
            border: kPrimaryColor,
          ),
          SizedBox(
            height: 15.0,
          ),
          RoundedButton(
            text: 'Sign In',
            press: () {},
            color: kBgColor,
            textColor: kPrimaryColor,
            border: kPrimaryColor,
          )
        ],
      ),
    ));
  }
}
