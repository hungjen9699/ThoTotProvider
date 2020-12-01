import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/home/components/schedule_tab.dart';

import 'components/realtime_tab.dart';

class HomeDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(
                  tabs: [
                    Tab(text: "Yêu cầu real-time"),
                    Tab(text: "Yêu cầu đặt lịch"),
                  ],
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BubbleTabIndicator(
                    indicatorHeight: 40,
                    indicatorColor: const Color(0xff5c4db1),
                    tabBarIndicatorSize: TabBarIndicatorSize.tab,
                  )),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [
                  Container(
                    child: RealtimeTab(),
                    height: double.infinity,
                  ),
                  Container(
                    height: double.infinity,
                    child: ScheduleTab(),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
