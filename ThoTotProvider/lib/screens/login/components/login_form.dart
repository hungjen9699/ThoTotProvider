import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/register/register_screen.dart';
import 'phone_login_button.dart';
import 'facebook_login_button.dart';
import 'google_login_button.dart';

class LoginForm extends StatefulWidget {
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/homescreen.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: (Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: const Color(0xff5c4db1))),
                          Image.asset('assets/technics-2.png',
                              height: 40, fit: BoxFit.fill)
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(" Thợ Tốt",
                          style: const TextStyle(
                              color: const Color(0xff5c4db1),
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 50),
                          textAlign: TextAlign.left)
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 35),
                child: Text("Dành cho thợ",
                    style: const TextStyle(
                        color: const Color(0xff5c4db1),
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 30),
                    textAlign: TextAlign.center),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    PhoneLoginButton(),
                    GoogleLoginButton(),
                    FacebookLoginButton(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Chưa có tài khoản?",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: const Color(0xff5c4db1)),
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProviderRegisterForm()),
                          );
                        },
                        child: Text("Đăng ký ngay",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: const Color(0xfffa7267)))),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
