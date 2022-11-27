import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(children: <Widget>[
          Expanded(
            child: LayoutBuilder(builder: (_, constraints) {
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
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'UNIVERSIDADE SÃO FRANCISCO',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    width: constraints.maxWidth,
                    height: constraints.maxHeight / 4,
                  ),
                  SizedBox(
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'GM',
                          style: TextStyle(color: Colors.white),
                        ),
                        const Text(
                          '+',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    width: constraints.maxWidth,
                    height: constraints.maxHeight / 4,
                  ),
                  SizedBox(
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Game Memory',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    width: constraints.maxWidth,
                    height: constraints.maxHeight / 4,
                  ),
                ],
              );
            }),
          ),
        ]),
      ),
    );
  }
}
