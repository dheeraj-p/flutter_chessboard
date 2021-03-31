library flutter_chessboard;

import 'package:flutter/material.dart';
import 'package:flutter_chessboard/types.dart' as types;
import 'package:flutter_chessboard/utils.dart';
import 'package:flutter_chessboard/widgets/chess_square.dart';

export 'package:flutter_chessboard/types.dart';

final zeroToSeven = List.generate(8, (index) => index);

class Chessboard extends StatefulWidget {
  final String fen;
  final double size;
  final types.Color orientation;
  final Color lightSquareColor;
  final Color darkSquareColor;

  Chessboard({
    @required this.fen,
    @required this.size,
    this.orientation = types.Color.WHITE,
    this.lightSquareColor = const Color.fromRGBO(240, 217, 181, 1),
    this.darkSquareColor = const Color.fromRGBO(181, 136, 99, 1),
  });

  @override
  State<StatefulWidget> createState() {
    return _ChessboardState();
  }
}

class _ChessboardState extends State<Chessboard> {
  @override
  Widget build(BuildContext context) {
    final squareSize = widget.size / 8;
    final pieceMap = getPieceMap(widget.fen);

    return Container(
      width: widget.size,
      height: widget.size,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 8,
        ),
        itemCount: 64,
        itemBuilder: (context, index) {
          final int fileIndex = index % 8;
          final num rankIndex = index / 8;
          final square = getSquare(rankIndex, fileIndex, widget.orientation);
          final color = (rankIndex + fileIndex) % 2 == 0
              ? widget.lightSquareColor
              : widget.darkSquareColor;
          return ChessSquare(
            name: square,
            color: color,
            size: squareSize,
            piece: pieceMap[square],
          );
        },
      ),
    );
  }
}
