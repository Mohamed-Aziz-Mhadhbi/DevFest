import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'index.dart';

@immutable
abstract class ConfigEvent extends Equatable {
  ConfigEvent([List props = const <dynamic>[]]);
  Future<ConfigState> applyAsync({ConfigState currentState, ConfigBloc bloc});
}

class LoadConfigEvent extends ConfigEvent {
  @override
  Future<ConfigState> applyAsync({ConfigState? currentState, ConfigBloc? bloc}) {
    // TODO: implement applyAsync
    throw UnimplementedError();
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
