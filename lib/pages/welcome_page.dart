import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:usf_gmplus/constants.dart';
import 'package:usf_gmplus/pages/home_page.dart';
import 'package:usf_gmplus/pages/welcome.dart';
import 'package:usf_gmplus/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page.dart';

class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  void initState() {
    super.initState();
    verificarToken().then((value) {
      if (value) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Welcome_page(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Future<bool> verificarToken() async {
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();
    if (sharedPreference.getString('token') != null) {
      return true;
    } else {
      return false;
    }
  }
}
