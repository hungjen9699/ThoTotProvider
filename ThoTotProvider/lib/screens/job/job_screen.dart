import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/job/components/history_tab.dart';

import 'components/accepted_tab.dart';
import 'components/waiting_tab.dart';

class JobPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(
                  tabs: [
                    Tab(text: "Đang đợi"),
                    Tab(text: "Đã chấp nhận"),
                    Tab(text: "Lịch sử"),
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
                    child: WaitingTab(),
                    height: double.infinity,
                  ),
                  Container(
                    height: double.infinity,
                    child: AcceptedTab(),
                  ),
                  Container(
                    height: double.infinity,
                    child: HistoryTab(),
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
