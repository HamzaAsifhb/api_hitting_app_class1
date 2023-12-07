import 'package:flutter/material.dart';
import 'package:my_api_hitting_app/screens/home_screen.dart';
import 'package:my_api_hitting_app/state_management/home_screen_state.dart';
import 'package:my_api_hitting_app/state_management/list_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> NumbersListProvider())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreenState(),
      ),
    );
  }
}
