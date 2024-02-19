import 'package:flutter/material.dart';

import 'third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
                width: double.infinity,
                color: Colors.yellow,
                alignment: Alignment.center,
                child: Text('Second Screen')),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Prev'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ThirdScreen(),
                    ),
                  );
                },
                child: Text('Next'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
