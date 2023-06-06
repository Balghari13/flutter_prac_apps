import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'countries.dart';

class FlashCardPage extends StatefulWidget {
  const FlashCardPage({super.key});

  @override
  State<FlashCardPage> createState() => _FlashCardPageState();
}

class _FlashCardPageState extends State<FlashCardPage> {
  int count = 0;
  int attempt = 0;
  bool showAnswer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        title: Text('Flash Card'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count=0;
          attempt=0;
          setState(() {

          });
        },
        child: Text('Reset'),


      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(child: Text('Score ${count}/${attempt}', style: TextStyle(fontSize: 25),)),
            SizedBox(
              height: 140,
              child: Card(
                elevation: 15,
                shadowColor: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(!showAnswer?'Country':'Capital', style: TextStyle(fontSize: 25),),
                    Text(!showAnswer? countries[attempt]['country']!
                        : countries[attempt]['city']!,
                      style: TextStyle(fontSize: 25, color: Colors.blue),),

                  ],
                ),
              ),
            ),
            // doing by padding
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 80.0),
            //   child: ElevatedButton(onPressed: (){
            //     setState(() {
            //       showAnswer = !showAnswer;
            //     });
            //   },
            //       child: Text(!showAnswer?'Show Answer':'Show Question')),
            // ),
            //doing using size box
            SizedBox(
              width: 50,
                child: Center(
                  child: ElevatedButton(onPressed: (){
                   setState(() {
                        showAnswer = !showAnswer;
                               });
                            },
                    child: Text(!showAnswer?'Show Answer':'Show Question')),
                ),
      ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){

                  setState(() {
                      if(attempt<countries.length-1){
                        count++;
                        attempt++;
                      }else{
                        Alert(
                          title: "Alert",
                          desc: 'You have reached the limit',
                            context: context,
                        ).show();
                      }
                  });
                }, child: Text('Correct'),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                ),
                ElevatedButton(onPressed: (){

                  setState(() {
                if(attempt<countries.length-1){
                  attempt++;
                }else{
                  Alert(
                    context: context,
                    title: 'Alert',
                      desc:'You reached the upper limit'
                  ).show();
                }
                  });
                }, child: Text('Wrong'),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                ),
              ],
            ),

          ],

        ),
      ),
    );
  }
}

class MyCountryApp extends StatefulWidget {
  const MyCountryApp({super.key});

  @override
  State<MyCountryApp> createState() => _MyCountryAppState();
}

class _MyCountryAppState extends State<MyCountryApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

