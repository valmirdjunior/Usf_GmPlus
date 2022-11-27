import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../widgets/start_button.dart';
import 'home_page.dart';

// ignore: camel_case_types
class Welcome_page2 extends StatelessWidget {
  const Welcome_page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    // var screenHeight = ( size.height - appBar.preferredSize.height) - MediaQuery.of(context).padding.top;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: <Widget>[
            Expanded(
              child: LayoutBuilder(
                builder: (_, constraints) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        child: Column(
                          children: [
                            const Text(''),
                            Image.asset(
                              'images/host.png',
                              width: MediaQuery.of(context).size.width * .2,
                              height: MediaQuery.of(context).size.width * .2,
                            )
                          ],
                        ),
                        width: constraints.maxWidth,
                        height: constraints.maxHeight / 4,
                      ),
                      SizedBox(
                        child: const Center(
                          child: Text(
                            'UNIVERSIDADE SÃO FRANCISCO',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        width: constraints.maxWidth,
                        height: constraints.maxHeight / 4,
                      ),
                      SizedBox(
                          child: Column(children: [
                            StartButton(
                              title: 'INICIAR',
                              color: Colors.white,
                              action: () => Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const HomePage();
                              })),
                            ),
                          ]),
                          width: constraints.maxWidth * .9,
                          height: constraints.maxHeight / 4),
                      SizedBox(
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              'Giovani Storani Jacon            | RA:    202102666',
                              style: TextStyle(color: Colors.white),
                            ),
                            const Text(
                              'João Vitor da Silva Martins      | RA:    202125222',
                              style: TextStyle(color: Colors.white),
                            ),
                            const Text(
                              'Otavio Augusto Fidencio de Lima  | RA:    202119046',
                              style: TextStyle(color: Colors.white),
                            ),
                            const Text(
                              'Valmir Chornechuka Junior        | RA: 002201901920',
                              style: TextStyle(color: Colors.white),
                            ),
                            const Text(
                              'Prof. José Matias Lemes Filho',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        width: constraints.maxWidth,
                        height: constraints.maxHeight / 4,
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Versão 1.0.1',
                    style: TextStyle(
                        color: Colors.black, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
