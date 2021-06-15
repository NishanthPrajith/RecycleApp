import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'all.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Widget build(BuildContext context) {
    return CupertinoPageScaffold (
      child: Container (
        margin: EdgeInsets.symmetric(horizontal: 40),
        width: double.infinity,
        height: double.infinity,
        color: CupertinoColors.white,
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 6,
            ),
            Text(
              "Hey,\nSign Up.",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              "Join us and make the world a better place",
              style: TextStyle(
                color: Color(0xffB9B9B9),
                fontWeight: FontWeight.bold,
                fontSize: 14
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: lightGreen
              ),
              child: Center(
                child: CupertinoTextField.borderless(
                  placeholder: "Name",
                  style: TextStyle (
                    color: Color(0xff717171),
                    fontWeight: FontWeight.w500
                  ),
                  obscureText: false,
                ),
              ),
            ), 
            Spacer(
              flex: 1,
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: lightGreen
              ),
              child: Center(
                child: CupertinoTextField.borderless(
                  placeholder: "Username",
                  style: TextStyle (
                    color: Color(0xff717171),
                    fontWeight: FontWeight.w500
                  ),
                  obscureText: false,
                ),
              ),
            ), 
            Spacer(
              flex: 1,
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: lightGreen
              ),
              child: Center(
                child: CupertinoTextField.borderless(
                  placeholder: "Password",
                  style: TextStyle (
                    color: Color(0xff717171),
                    fontWeight: FontWeight.w500
                  ),
                  obscureText: false,
                ),
              ),
            ), 
            Spacer(
              flex: 1,
            ),
            Row (
              children: [
                Text(
                  "Forgot Passcode? ",
                  style: TextStyle(
                    color: Color(0xffB9B9B9),
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                  ),
                ),
                CupertinoButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    print("Reset Pressed");
                  }, 
                  color: CupertinoColors.tertiarySystemBackground,
                  child: Text(
                    "Reset",
                    style: TextStyle (
                      color: Color(0xff717171),
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                    ),
                  )
                )
              ],
            ),
            Spacer(
              flex: 2,
            ),
            Flexible(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: CupertinoButton(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: green,
                  onPressed: () {
                    print("pressed");
                  }, 
                  child: Text(
                    "Sign Up",
                    style: TextStyle (
                      color: CupertinoColors.white,
                      fontSize: 18
                    ),
                  ),
                ),
              ),
            ),
            Spacer(
              flex: 4,
            )
          ],
        )
      )
    );
  }
}