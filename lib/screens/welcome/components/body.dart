import 'package:flutter/material.dart';
import 'package:sign_in_up/constants.dart';
import 'package:sign_in_up/screens/components/roundedbutton.dart';
import 'package:sign_in_up/screens/login/login.dart';
import 'package:sign_in_up/screens/welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var heading = 'Find the Perfect Freelance Services';
    var data =
        'Upgrade to a curated experience packed with tools and benefits, dedicated to businesses. Get matched with the perfect talent by a customer success manager';
    return Background(
        child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
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
              style: TextStyle(fontSize: 10, color: kTextLightColor),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          RoundedButton(
            text: 'Register Now',
            press: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Login();
                    },
                  ),
                );},
            color: Colors.white70,
            textColor: Colors.black,
            border: kPrimaryColor,
          ),
          SizedBox(
            height: 10.0,
          ),
          RoundedButton(
            text: 'Sign In',
            press: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Login();
                    },
                  ),
                );},
            color: kBgColor,
            textColor: kPrimaryColor,
            border: kPrimaryColor,
          )
        ],
      ),
    ));
  }
}
