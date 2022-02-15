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
    var data =
        'Login with Email';
    return Background(
        child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text(
              data,
              textAlign: TextAlign.left,
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 20, color: kTextLightColor, fontWeight: FontWeight.w500),
            ),
          Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Email",
          border: InputBorder.none,
        ),
      ),
    ),
          Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextField(
        obscureText: true,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          border: InputBorder.none,
        ),
      ),
    ),
    RoundedButton(text: "Login", border: Colors.black, press: (){}, color: Colors.black, textColor: Colors.white)
        ],
      ),
    ));
  }
}
