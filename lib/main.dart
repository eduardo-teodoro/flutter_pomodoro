import 'package:flutter/material.dart';
import 'package:pomodoro/pages/pomodoro.dart';
import 'package:provider/provider.dart';
import './store/pomodoro.store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(create: (_) => PomodoroStore(),)
      ],
      child: MaterialApp(
        
        title: 'Pomodoro',
        theme: ThemeData(
    
          primarySwatch: Colors.blue,
        ),
        home: Pomodoro(),
      ),
    );
  }
}
