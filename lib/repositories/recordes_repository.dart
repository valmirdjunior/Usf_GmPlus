import 'package:usf_gmplus/constants.dart';
import 'package:usf_gmplus/models/game_play.dart';
import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';

part 'recordes_repository.g.dart';

class RecordesRepository = RecordesRepositoryBase with _$RecordesRepository;

abstract class RecordesRepositoryBase with Store {
  late final Box _recordes;
  late final GamePlay gamePlay;
  @observable
  Map pontuacaoReversivel = {};
  @observable
  Map pontuacaoNormal = {};

  RecordesRepositoryBase() {
    _initRepository();
  }

  _initRepository() async {
    await _initDatabase();
    await loadRecordes();
  }

  _initDatabase() async {
    _recordes = await Hive.openBox('gameRecordes3');
  }

  @action
  loadRecordes() {
    pontuacaoNormal = _recordes.get(Modo.normal.toString()) ?? {};
    pontuacaoReversivel = _recordes.get(Modo.reversivel.toString()) ?? {};
  }

  updateRecordes({required GamePlay gamePlay, required int score}) {
    final key = gamePlay.modo.toString();

    if (gamePlay.modo == Modo.normal &&
        (pontuacaoNormal[gamePlay.nivel] == null ||
            score < pontuacaoNormal[gamePlay.nivel])) {
      pontuacaoNormal[gamePlay.nivel] = score;
      _recordes.put(key, pontuacaoNormal);
    } else if (gamePlay.modo == Modo.reversivel &&
        (pontuacaoReversivel[gamePlay.nivel] == null ||
            score > pontuacaoReversivel[gamePlay.nivel])) {
      pontuacaoReversivel[gamePlay.nivel] = score;
      _recordes.put(key, pontuacaoReversivel);
    }
  }
}
