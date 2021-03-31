import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_chessboard/chessboard.dart' as cb;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _fen = 'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1';

  @override
  Widget build(BuildContext context) {
    final viewport = MediaQuery.of(context).size;
    final size = min(viewport.height, viewport.width);

    return Scaffold(
      appBar: AppBar(
        title: Text("Random Chess"),
      ),
      body: Center(
        child: cb.Chessboard(
          fen: _fen,
          size: size,
          orientation: cb.Color.WHITE,
        ),
      ),
    );
  }
}
