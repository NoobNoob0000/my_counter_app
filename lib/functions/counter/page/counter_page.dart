import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  int _brightVal = 225;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        backgroundColor: Colors.black12,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.red.shade300),
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(_brightVal, _brightVal, _brightVal, 1),
                ),
                child: Center(
                  child: RichText(
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                    text: TextSpan(
                      text: "You have pressed",
                      children: <TextSpan>[
                        TextSpan(
                          text: ' $_counter',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(text: ' times'),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _counter += 1;
                    });
                  },
                  child: const Text("Hit me to increase num"),
                ),
              ),
              Slider(
                onChanged: (val) {
                  setState(() {
                    _brightVal = val.toInt();
                  });
                },
                label: "Slide me to change container's brightness",
                value: _brightVal.toDouble(),
                min: 200,
                max: 250,
              )
            ],
          ),
        ),
      ),
    );
  }
}
