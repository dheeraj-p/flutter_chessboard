# flutter_stateless_chessboard

A Stateless Chessboard Widget for Flutter. This package provides just the chessboard. The game logic can be implemented using [chess](https://pub.dev/packages/chess) library. Check example/main.dart file, for implementing game logic.

## Notice
This package has been forked from [flutter_chessboard](https://github.com/varunpvp/flutter_chessboard) and has been modified. This modified version is not published to `pub.dev` and is being used as private package.

## Example

```
import 'package:flutter/material.dart';
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart' as cb;

void main() {
  runApp(
    new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: cb.Chessboard(
            size: 300,
            fen: "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1",
            orientation: cb.Color.BLACK,  // optional
            lightSquareColor: Color.fromRGBO(240, 217, 181, 1), // optional
            darkSquareColor: Color.fromRGBO(181, 136, 99, 1), // optional
          ),
        ),
      ),
    ),
  );
}

```

## Parameters

### fen:

fen that should be show on the board (example `rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1`)

### size:

Size of the chessboard widget

### orientation (optional):

Specify orientation of the chessboard.

### lightSquareColor (optional):

color of light square on chessboard.

### darkSquareColor (optional):

color of dart square on chessboard.

