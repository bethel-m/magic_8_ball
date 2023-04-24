import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.blue.shade900,
              centerTitle: true,
              title: const Text(
                "ASK ME ANYTHING",
              )),
          body: Magic(),
          backgroundColor: Colors.blue,
        ),
      ),
    );

// class Magic extends StatelessWidget {
//   const Magic({Key? key}) : super(key: key);
//   int magicBallNumber = 1;
//   @override
//   Widget build(BuildContext context) {
//     magicBallNumber = 2;
//     return Center(
//       child: Image.asset('images/ball$magicBallNumber.png'),
//     );
//   }
// }

class Magic extends StatefulWidget {
  const Magic({Key? key}) : super(key: key);

  @override
  State<Magic> createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int magicBallNumber = 1;
  changeMagicBallNumber() {
    setState(() {
      magicBallNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          changeMagicBallNumber();
        },
        child: Image.asset('images/ball$magicBallNumber.png'),
      ),
    );
  }
}
