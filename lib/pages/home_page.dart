import 'package:flutter/material.dart';
import 'package:usf_gmplus/constants.dart';
import 'package:usf_gmplus/pages/nivel_page.dart';
import 'package:usf_gmplus/theme.dart';
import 'package:usf_gmplus/widgets/logo.dart';
import 'package:usf_gmplus/widgets/recordes.dart';
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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Logo(),
            StartButton(
              title: 'Normal',
              color: Colors.white,
              action: () => selecionarNivel(Modo.normal, context),
            ),
            StartButton(
              title: 'Reversível',
              color: Color.fromARGB(255, 0, 0, 0),
              action: () => selecionarNivel(Modo.reversivel, context),
            ),
            const SizedBox(height: 60),
            const Recordes(),
          ],
        ),
      ),
    );
  }
}
