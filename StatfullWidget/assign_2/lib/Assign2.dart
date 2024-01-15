import 'package:flutter/material.dart';

class Assign2 extends StatefulWidget {
  const Assign2({super.key});

  @override
  State<Assign2> createState() => _Assign2State();
}

class _Assign2State extends State<Assign2> {
  bool boxColor1 = false;
  bool boxColor2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Box"),
        backgroundColor: Colors.blue[200],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: boxColor1 ? Colors.red : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          boxColor1 = !boxColor1;
                        });
                      },
                      child: const Text("Box1"))
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: boxColor2 ? Colors.blue : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          boxColor2 = !boxColor2;
                        });
                      },
                      child: const Text("Box2")),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
