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
    return Card(
      color: const Color.fromARGB(255, 18, 97, 18),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Pontuações',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 22,
                ),
              ),
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
            )
          ],
        ),
      ),
    );
  }
}
