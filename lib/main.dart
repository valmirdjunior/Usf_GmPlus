import 'package:flutter/material.dart';
import 'package:usf_gmplus/controllers/game_controller.dart';
import 'package:usf_gmplus/pages/welcome2.dart';
import 'package:usf_gmplus/repositories/recordes_repository.dart';
import 'package:usf_gmplus/theme.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();

  runApp(MultiProvider(
    providers: [
      Provider<RecordesRepository>(create: (_) => RecordesRepository()),
      ProxyProvider<RecordesRepository, GameController>(
        update: (_, repo, __) => GameController(recordesRepository: repo),
      ),
    ],
    child: const App(),
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memory Technology',
      debugShowCheckedModeBanner: false,
      theme: Usf.theme,
      home: const Welcome_page2(),
    );
  }
}
