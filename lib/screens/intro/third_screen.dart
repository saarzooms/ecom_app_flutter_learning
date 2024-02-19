import 'package:ecom_app/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
                width: double.infinity,
                color: Colors.green,
                alignment: Alignment.center,
                child: Text('Third Screen')),
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
                      builder: (context) => DashboardScreen(),
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
