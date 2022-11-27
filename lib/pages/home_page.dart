import 'package:flutter/material.dart';
import 'package:usf_gmplus/constants.dart';
import 'package:usf_gmplus/pages/nivel_page.dart';
import 'package:usf_gmplus/pages/recordes_page.dart';
import 'package:usf_gmplus/widgets/start_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  selecionarNivel(Modo modo, BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NivelPage(modo: modo),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    showRecordes(Modo modo) async {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => RecordesPage(modo: modo),
        ),
      );
    }

    var size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
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
                      width: constraints.maxWidth * .9,
                      height: constraints.maxHeight / 7,
                    ),
                    SizedBox(
                      child: const Center(
                        child: Text(
                          'UNIVERSIDADE SÃO FRANCISCO',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      width: constraints.maxWidth * .9,
                      height: constraints.maxHeight / 7,
                    ),
                    SizedBox(
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'GM+',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          const Text(
                            'Game Memory',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      width: constraints.maxWidth,
                      height: constraints.maxHeight / 7,
                    ),
                    SizedBox(
                      child: Column(children: [
                        StartButton(
                          title: 'Normal',
                          color: Colors.white,
                          action: () => selecionarNivel(Modo.normal, context),
                        ),
                      ]),
                      width: constraints.maxWidth * .9,
                      height: constraints.maxHeight / 7,
                    ),
                    SizedBox(
                      child: Column(children: [
                        StartButton(
                          title: 'Reversível',
                          color: Colors.black,
                          action: () =>
                              selecionarNivel(Modo.reversivel, context),
                        ),
                      ]),
                      width: constraints.maxWidth * .9,
                      height: constraints.maxHeight / 7,
                    ),
                    const SizedBox(height: 60),
                    Container(
                      child: Column(children: [
                        const Text(
                          'Pontuações',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        ListTile(
                          title: const Text('Normal',
                              style: TextStyle(color: Colors.white)),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () => showRecordes(Modo.normal),
                        ),
                        ListTile(
                          title: const Text('Reversível',
                              style: TextStyle(color: Colors.white)),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () => showRecordes(Modo.reversivel),
                        ),
                      ]),
                      width: constraints.maxWidth * .9,
                      height: constraints.maxHeight / 7,
                      color: const Color.fromARGB(255, 16, 86, 16),
                    ),
                  ],
                );
              }),
            ),
          ]),
        ),
      );
    });
  }
}
