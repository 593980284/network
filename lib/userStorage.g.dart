// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userStorage.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStorage on UserStorageBase, Store {
  final _$nameAtom = Atom(name: 'UserStorageBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$numAtom = Atom(name: 'UserStorageBase.num');

  @override
  int get num {
    _$numAtom.context.enforceReadPolicy(_$numAtom);
    _$numAtom.reportObserved();
    return super.num;
  }

  @override
  set num(int value) {
    _$numAtom.context.conditionallyRunInAction(() {
      super.num = value;
      _$numAtom.reportChanged();
    }, _$numAtom, name: '${_$numAtom.name}_set');
  }

  final _$UserStorageBaseActionController =
      ActionController(name: 'UserStorageBase');

  @override
  dynamic changeName() {
    final _$actionInfo = _$UserStorageBaseActionController.startAction();
    try {
      return super.changeName();
    } finally {
      _$UserStorageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'name: ${name.toString()},num: ${num.toString()}';
    return '{$string}';
  }
}
