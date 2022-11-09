// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recordes_repository.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RecordesRepository on RecordesRepositoryBase, Store {
  final _$pontuacaoReversivelAtom =
      Atom(name: 'RecordesRepositoryBase.recordesReversivel');

  Map<dynamic, dynamic> get recordesReversivel {
    _$pontuacaoReversivelAtom.reportRead();
    return super.pontuacaoReversivel;
  }

  @override
  set pontuacaoReversivel(Map<dynamic, dynamic> value) {
    _$pontuacaoReversivelAtom.reportWrite(value, super.pontuacaoReversivel, () {
      super.pontuacaoReversivel = value;
    });
  }

  final _$recordesNormalAtom =
      Atom(name: 'RecordesRepositoryBase.recordesNormal');

  @override
  Map<dynamic, dynamic> get pontuacaoNormal {
    _$recordesNormalAtom.reportRead();
    return super.pontuacaoNormal;
  }

  @override
  set pontuacaoNormal(Map<dynamic, dynamic> value) {
    _$recordesNormalAtom.reportWrite(value, super.pontuacaoNormal, () {
      super.pontuacaoNormal = value;
    });
  }

  final _$RecordesRepositoryBaseActionController =
      ActionController(name: 'RecordesRepositoryBase');

  @override
  dynamic loadRecordes() {
    final _$actionInfo = _$RecordesRepositoryBaseActionController.startAction(
        name: 'RecordesRepositoryBase.loadRecordes');
    try {
      return super.loadRecordes();
    } finally {
      _$RecordesRepositoryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
recordesReversivel: ${pontuacaoReversivel},
recordesNormal: ${pontuacaoNormal}
    ''';
  }
}
