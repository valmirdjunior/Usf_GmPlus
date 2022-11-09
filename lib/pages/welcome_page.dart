import 'package:flutter/material.dart';
import 'package:usf_gmplus/pages/home_page.dart';
import 'package:usf_gmplus/pages/welcome.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  _welcomeState createState() => _welcomeState();
}

// ignore: camel_case_types
class _welcomeState extends State<welcome> {
  @override
  void initState() {
    super.initState();
    verificarToken().then((value) {
      if (value) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Welcome_page(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
