import 'package:flutter/material.dart';
import 'package:usf_gmplus/constants.dart';
import 'package:usf_gmplus/pages/recordes_page.dart';

class Recordes extends StatefulWidget {
  const Recordes({Key? key}) : super(key: key);

  @override
  State<Recordes> createState() => _RecordesState();
}

class _RecordesState extends State<Recordes> {
  showRecordes(Modo modo) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => RecordesPage(modo: modo),
      ),
    );
  }

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
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Pontuações',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    width: constraints.maxWidth,
                    height: constraints.maxHeight / 3,
                  ),
                  ListTile(
                    title: const Text('Normal'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => showRecordes(Modo.normal),
                  ),
                  ListTile(
                    title: const Text('Reversível'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => showRecordes(Modo.reversivel),
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
