import 'package:flutter/cupertino.dart';

import 'all.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Container (
        padding: EdgeInsets.symmetric(horizontal: 40),
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
              "Hey,\nLogin Now.",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Row (
              children: [
                Text(
                  "If you are new. ",
                  style: TextStyle(
                    color: Color(0xffB9B9B9),
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                ),
                CupertinoButton(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    Navigator.of(context).push(CustomPageRoute(SignUp()));
                  },
                  color: CupertinoColors.tertiarySystemBackground,
                  child: Text(
                    "Sign up.",
                    style: TextStyle (
                      color: Color(0xff717171),
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  )
                )
              ],
            ),
            Spacer(
              flex: 2,
            ),
            Container(
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
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: green,
                  onPressed: () {
                    print("pressed");
                  }, 
                  child: Text(
                    "Log In",
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