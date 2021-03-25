import 'package:flutter/material.dart';
import 'package:flutter_chessboard/types.dart' as types;
import 'package:flutter_chessboard/widgets/chess_piece.dart';
import 'package:flutter_chessboard/widgets/square.dart';

class ChessSquare extends StatelessWidget {
  final String name;
  final Color color;
  final double size;
  final types.Piece piece;

  ChessSquare({
    this.name,
    @required this.color,
    @required this.size,
    this.piece,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Square(
        size: size,
        color: color,
        child: piece != null
            ? ChessPiece(
                squareName: name,
                squareColor: color,
                piece: piece,
                size: size,
              )
            : null,
      ),
    );
  }
}
