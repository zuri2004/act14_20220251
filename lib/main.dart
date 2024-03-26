import 'package:flutter/material.dart';
import 'package:watch_it/watch_it.dart';
import 'dependencias.dart';
import 'package:act14/models/contadorm.dart';
import 'package:act14/widgets/contadorF.dart';
import 'package:act14/widgets/contadorI.dart';
import 'package:act14/widgets/contadorT.dart';

void main() {
  initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch_It',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget with WatchItMixin {
  const MyHomePage({super.key});

  



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text('watch_it: State Management!'),
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            CounterTextWidget(),
            CounterTextFieldWidget(),
            CounterImageWidget(),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          di<CounterModel>().counter.value++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
