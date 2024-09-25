import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class ConfigState extends Equatable {
  ConfigState([List props = const <dynamic>[]]);
  ConfigState getStateCopy();
}
