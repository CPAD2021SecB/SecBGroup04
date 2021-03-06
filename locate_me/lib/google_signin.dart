import 'package:location_tracking/googleAuthService.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class GoogleSignInPage extends StatefulWidget {
  const GoogleSignInPage({Key? key}) : super(key: key);

  @override
  _GoogleSignInPageState createState() => _GoogleSignInPageState();
}

class _GoogleSignInPageState extends State<GoogleSignInPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Align(
              alignment: Alignment.center,
              child: Center(
                child: Container(
                    height: 50,
                    width: 180,
                    child: SignInButton(
                      Buttons.Google,
                      onPressed: () {
                        new AuthClass().googleSignIn(context);
                      },
                    )),
              ))),
    );
  }
}
