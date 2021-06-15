import 'all.dart';
import 'package:flutter/cupertino.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final PageController _pageControl = PageController(initialPage: 0);
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Stack (
      alignment: Alignment.bottomCenter,
      children: [
        PageView(
          onPageChanged: (int page) {
            setState(() {
              _page = page;
            });
          },
          controller: _pageControl,
          children: [
            Container(
              color: CupertinoColors.white
            ),
            Container(
              color: CupertinoColors.white,
            ),
            Container(
              color: CupertinoColors.white,
            )
          ],
        ),
        Column (
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(flex: 7,),
            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(
                  flex: 10,
                ),
                Container (
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration (
                    shape: BoxShape.circle,
                    color: _page == 0 ? green : lightGreen
                  )
                ),
                Spacer(),
                Container (
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration (
                    shape: BoxShape.circle,
                    color: _page == 1 ? green : lightGreen
                  )
                ),
                Spacer(),
                Container (
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration (
                    shape: BoxShape.circle,
                    color: _page == 2 ? green : lightGreen
                  )
                ),
                Spacer(
                  flex: 10,
                ),
              ],
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30, right: 20, top: 30),
                  child: CupertinoButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: green,
                    onPressed: () {
                      Navigator.of(context).push(CustomPageRoute(SignIn()));
                    }, 
                    child: Container(
                      child: Text(
                        "Sign In",
                        style: TextStyle (
                          color: CupertinoColors.white
                        ),
                      ),
                    )
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
