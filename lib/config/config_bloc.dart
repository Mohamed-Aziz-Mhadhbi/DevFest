import 'package:bloc/bloc.dart';
import 'index.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  ConfigBloc(super.initialState);

  @override
  ConfigState get inialState => UnConfigState();

  @override
  Stream<ConfigState> mapEventToState(
    ConfigEvent event,
  ) async* {}
}
