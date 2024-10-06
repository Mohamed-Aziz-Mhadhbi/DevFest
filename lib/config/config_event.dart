import 'package:devfest/utils/devfest.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'index.dart';

@immutable
abstract class ConfigEvent extends Equatable {
  const ConfigEvent([List props = const <dynamic>[]]);
  Future<ConfigState> applyAsync({ConfigState currentState, ConfigBloc bloc});
}

class DarkModeEvent extends ConfigEvent {
  final bool darkOn;

  DarkModeEvent(this.darkOn);

  @override
  String toString() => 'DarkModeEvent';

  @override
  Future<ConfigState> applyAsync(
      {ConfigState? currentState, ConfigBloc? bloc}) async {
    try {
      bloc?.darkMode = darkOn;
      Devfest.prefs?.setBool(Devfest.darkModePref, darkOn);
      return InConfigState();
    } catch (_, stacktrace) {
      print('$_ $stacktrace');
      return ErrorConfigState(_.toString());
    }
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoadConfigEvent extends ConfigEvent {
  @override
  String toString() => 'LoadConfigEvent';

  @override
  Future<ConfigState> applyAsync(
      {ConfigState? currentState, ConfigBloc? bloc}) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      return InConfigState();
    } catch (_, stacktrace) {
      print('$_ $stacktrace');
      return ErrorConfigState(_.toString());
    }
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}
