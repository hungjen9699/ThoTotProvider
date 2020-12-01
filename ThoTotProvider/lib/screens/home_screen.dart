import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/account/account_screen.dart';
import 'home/home_details_screen.dart';
import 'job/job_screen.dart';
import 'notification/inbox_screen.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int _selectedTab = 0;
  List<String> appBarTitle = ["Trang chủ", "Công việc", "Hộp thư", "Tài khoản"];
  Widget selectTab(int selectedIndex) {
    if (selectedIndex == 0)
      return HomeDetails();
    else if (selectedIndex == 1)
      return JobPage();
    else if (selectedIndex == 2)
      return InboxPage();
    else
      return AccountPage();

    // } else {
    //   return AccountPage();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.white),
          )),
      home: Scaffold(
        appBar: AppBar(
          leading: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: const Color(0xff5c4db1))),
              Image.asset('assets/technics-2.png', height: 25, fit: BoxFit.fill)
            ],
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("ThợTốt",
                  style: TextStyle(
                      color: const Color(0xff5c4db1),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 20),
                  textAlign: TextAlign.left),
              Text(" Chào buổi sáng, thợ Hữu Phát",
                  style: const TextStyle(
                      color: const Color(0xff5c4db1),
                      fontWeight: FontWeight.w400,
                      fontFamily: "SVN-ProductSans",
                      fontStyle: FontStyle.normal,
                      fontSize: 15),
                  textAlign: TextAlign.left)
            ],
          ),
          flexibleSpace: Stack(
            fit: StackFit.passthrough,
            alignment: Alignment.topRight,
            children: <Widget>[
              Image(
                image: AssetImage('assets/appbar.png'),
                fit: BoxFit.fill,
              ),
              Image(
                image: AssetImage('assets/appbar-canvas.png'),
                alignment: Alignment.topRight,
              )
            ],
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Container(
            color: const Color(0xffe5e5e5), child: selectTab(_selectedTab)),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xff5c4db1),
          currentIndex: _selectedTab,
          selectedItemColor: Colors.white,
          unselectedItemColor: const Color(0xffc1b7ff),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: const Color(0xff5c4db1),
              icon: Icon(Icons.home),
              title: Text('Trang chủ'),
            ),
            BottomNavigationBarItem(
              backgroundColor: const Color(0xff5c4db1),
              icon: Icon(Icons.menu),
              title: Text('Công việc'),
            ),
            BottomNavigationBarItem(
              backgroundColor: const Color(0xff5c4db1),
              icon: Icon(Icons.notifications),
              title: Text('Hộp thư'),
            ),
            BottomNavigationBarItem(
              backgroundColor: const Color(0xff5c4db1),
              icon: Icon(Icons.account_circle),
              title: Text('Tài khoản'),
            ),
          ],
        ),
      ),
    );
  }
}
