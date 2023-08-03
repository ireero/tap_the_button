import 'package:flutter/material.dart';
import 'phase_control.dart';
import 'package:google_fonts/google_fonts.dart';

class TextChoicePhase extends StatefulWidget {
  TextChoicePhase({required this.index, super.key});

  int index;

  @override
  State<TextChoicePhase> createState() {
    // TODO: implement createState
    return _TextChoicePhaseState();
  }
}

class _TextChoicePhaseState extends State<TextChoicePhase> {
  int valor = 0;

  @override
  Widget build(BuildContext context) {
    valor = widget.index;
    return Text(
      'Phase ${valor + 1}',
      style: GoogleFonts.knewave(color: Colors.white, fontSize: 30, shadows: [
        Shadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(5, 5),
            blurRadius: 15),
      ]),
    );
  }
}
