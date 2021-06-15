import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:garbage_disposal_app/all.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return CupertinoPageScaffold (
      backgroundColor: CupertinoColors.white,
      navigationBar: CupertinoNavigationBar (
        backgroundColor: CupertinoColors.white,
        middle: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Random Icon?"),
              Text("Avatar")
            ],
          ),
        ),
        border: Border.all(
          color: CupertinoColors.white,
          width: 0
        ),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.fromLTRB(20, 25, 0, 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(
              flex: 1,
            ),
            Flexible(
              flex: 1,
              child: Text(
                "EXPLORE EVENTS.",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: (height < 500) ? 14 : 22
                ),
              )
            ),
            Spacer(
              flex: 1,
            ),
            Flexible(
              flex: 17,
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider (
                      indent: 30,
                      endIndent: 50,
                      height: max(40, height / 20),
                    );
                  },
                  itemCount: 18,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: double.infinity,
                      height: max(105, height / 7),
                      child: EventTicket(index: index,)
                    );
                  }
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

class EventTicket extends StatelessWidget {

  int index = 0;
  EventTicket({Key? key, required this.index}) : super(key: key);

  Widget build(BuildContext context) {
    return Row (
      children: [
        Flexible (
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "18",
                style: TextStyle (
                  fontSize: 22,
                  fontWeight: FontWeight.w700
                ),
              ),
              Text(
                "SEP",
                style: TextStyle (
                  fontSize: 14,
                  fontWeight: FontWeight.w700
                ),
              )
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Flexible (
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "MAGIC EVENT",
                style: TextStyle (
                  fontSize: 12,
                  color: CupertinoColors.activeOrange,
                  fontWeight: FontWeight.w800
                ),
              ),
              Text(
                "International Circus Magic Event",
                style: TextStyle (
                  fontSize: 17,
                  fontWeight: FontWeight.w700
                ),
              ),
              Text (
                "Hosted by Nishanth Prajith",
                style: TextStyle (
                  fontSize: 14,
                  color: CupertinoColors.inactiveGray,
                  fontWeight: FontWeight.w400
                ),
              ),
              Text (
                "Circus Magic | English | ${this.index} min",
                style: TextStyle (
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}