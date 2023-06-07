import 'package:flutter/material.dart';


class PassingDataPage extends StatelessWidget {
  final int count;
  final int attempt;
  const PassingDataPage({super.key, required this.count, required this.attempt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passing Data'),
      ),
      body:    SizedBox(
        height: 140,
        child: Card(
          elevation: 15,
          shadowColor: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Score', style: TextStyle(fontSize: 25),),
              Text('$count', style: TextStyle(fontSize: 25, color: Colors.blue),),
              Text('Attempt', style: TextStyle(fontSize: 25),),
              Text('$attempt', style: TextStyle(fontSize: 25, color: Colors.blue),),

            ],
          ),

        ),
      ),
    );
  }
}
