import 'package:flutter/material.dart';
import 'package:tap_the_button/models/phase.dart';
import 'package:tap_the_button/screens/choice_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models/phase_control.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.deepOrange);
List<int> listaFasesCompletas = [];

void main() {
  runApp(RestartWidget(
    child: MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        cardTheme: const CardTheme().copyWith(),
      ),
      debugShowCheckedModeBanner: false,
      home: const ChoiceScreen(),
    ),
  ));
}

class RestartWidget extends StatefulWidget {
  const RestartWidget({required this.child, super.key});

  final Widget child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_RestartWidgetState>()?.restartApp();
  }

  @override
  // ignore: library_private_types_in_public_api
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();
  var listaFaseCompletasAqui = [];

  void retornarFasesCompletas() async {
    final prefs = await SharedPreferences.getInstance();
    for (int fase = 0; fase < 2; fase++) {
      final temp = prefs.getInt('f${fase + 1}') ?? 0;
      listaFasesCompletas.add(temp);
    }
    listaFaseCompletasAqui = listaFasesCompletas;
    PhaseControl().listPhases = listaFasesCompletas;
  }

  @override
  void initState() {
    retornarFasesCompletas();
    super.initState();
  }

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}
