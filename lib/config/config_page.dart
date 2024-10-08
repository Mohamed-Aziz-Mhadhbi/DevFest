import 'package:devfest/config/config_bloc.dart';
import 'package:devfest/utils/devfest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'index.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key});

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  late ConfigBloc configBloc;

  @override
  void initState() {
    super.initState();
    setupApp();
  }

  setupApp() {
    configBloc = ConfigBloc();
    configBloc.darkModeOn = Devfest.prefs?.getBool(Devfest.darkModePref) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocProvider(
        create: (BuildContext context) {  },
        child: BlocBuilder<ConfigBloc,ConfigState>(
          builder: (context,state){
              return MaterialApp(
              title: 'Google Devfest',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                fontFamily: Devfest.google_sans_family,
                primarySwatch: Colors.red,
                primaryColor: configBloc.darkModeOn ? Colors.black : Colors.white,
                disabledColor: Colors.grey,
                cardColor: configBloc.darkModeOn ? Colors.black : Colors.white,
                canvasColor:
                    configBloc.darkModeOn ? Colors.black : Colors.grey[50],
                brightness:
                    configBloc.darkModeOn ? Brightness.dark : Brightness.light,
                buttonTheme: Theme.of(context).buttonTheme.copyWith(
                    colorScheme: configBloc.darkModeOn
                        ? ColorScheme.dark()
                        : ColorScheme.light()),
                appBarTheme: AppBarTheme(
                  elevation: 0.0,
                ),
              ),  home: ,
              routes: {
              },
            );
          },
        ),
      ),
    );
  }
}
