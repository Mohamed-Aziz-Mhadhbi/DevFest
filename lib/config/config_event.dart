import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'index.dart';

@immutable
abstract class ConfigEvent extends Equatable {
  const ConfigEvent([List props = const <dynamic>[]]);
  Future<ConfigState> applyAsync({ConfigState currentState, ConfigBloc bloc});
}

class LoadConfigEvent extends ConfigEvent {
  @override
  String toString() => 'LoadConfigEvent';

  @override
  Future<ConfigState> applyAsync(
      {ConfigState? currentState, ConfigBloc? bloc}) async {
    return InConfigState();
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}
