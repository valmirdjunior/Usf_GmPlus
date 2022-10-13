import 'dart:html';

import 'package:flutter/material.dart';
import 'package:usf_gmplus/constants.dart';
import 'package:usf_gmplus/pages/home_page.dart';
import 'package:usf_gmplus/theme.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'home_page.dart';

class Welcome_page extends StatelessWidget {
  const Welcome_page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Observer(
                builder: (context) => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Image.asset('images/host.png',
                          width: 200, height: 150),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 36, bottom: 200),
                      child: Text(
                        'UNIVERSIDADE SÃO FRANCISCO',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 16, 113, 92),
                      ),
                      child: const Text(
                        'INICIAR',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const HomePage();
                        }));
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 200, bottom: 2),
                      child: Text(
                        'Giovani Storani Jacon            | RA:    202102666',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 2, bottom: 2),
                      child: Text(
                          'João Vitor da Silva Martins      | RA:    202125222'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 2, bottom: 2),
                      child: Text(
                          'Otavio Augusto Fidencio de Lima  | RA:    202119046'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 2, bottom: 200),
                      child: Text(
                          'Valmir Chornechuka Junior        | RA: 002201901920'),
                    ),
                  ],
                ),
              ),
            )));
  }
}
