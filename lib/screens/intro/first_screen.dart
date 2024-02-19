import 'package:ecom_app/screens/intro/second_screen.dart';
import 'package:flutter/material.dart';

import '../dashboard_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text('First Screen'),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DashboardScreen(),
                    ),
                  );
                },
                child: Text('Skip'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(),
                    ),
                  );
                },
                child: Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
