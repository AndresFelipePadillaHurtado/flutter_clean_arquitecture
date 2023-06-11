import 'package:clean_arquitecture/config/theme/app_theme.dart';
import 'package:clean_arquitecture/presentation/providers/user_provider.dart';
import 'package:clean_arquitecture/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserProvider>(
            create: (_) => UserProvider()..fetchUser())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(initialValue: 2).theme(),
        home: const HomeScreen(),
      ),
    );
  }
}
