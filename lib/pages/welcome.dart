import 'package:flutter/material.dart';
import 'package:usf_gmplus/pages/home_page.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

// ignore: camel_case_types
class Welcome_page extends StatelessWidget {
  const Welcome_page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          body: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Observer(
                  builder: (context) => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('images/host.png', width: 200, height: 150),
                      SizedBox(
                        child: const Text(
                          'UNIVERSIDADE SÃO FRANCISCO',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        height: constraints.maxHeight,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 16, 113, 92),
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
                    ],
                  ),
                ),
              )));
    });
  }
}
