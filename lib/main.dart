import 'package:flash_card/FlashCard/flash_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
//       Scaffold(
// appBar: AppBar(
//   title: Text('Circle Image'),
// ),
//
//         ),
//       ),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            width: 250, height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
              image: DecorationImage(
                image: AssetImage('assets/njm.jpg'),
                 //fit: BoxFit.fill,
              ),
              border: Border.all(
                color: Colors.grey,
                width: 5
              )
            ),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FlashCardPage()));
            //Navigator.push(context, MaterialPageRoute(builder: (context)=>FlashCardPage()));
            }, child: Text('Flash Card App'))],
        ),
      ),
    );
  }
}


