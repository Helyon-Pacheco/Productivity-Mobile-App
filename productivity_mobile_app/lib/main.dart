import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/task_tracking_screen.dart';
import 'screens/profile_screen.dart';
import '../models/user.dart';
import '../utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final user = User(
      id: '1',
      name: 'John Doe',
      email: 'johndoe@example.com',
      password: 'password123',
      profileImageUrl: 'https://example.com/profile.jpg',
    );

    return MaterialApp(
      title: 'Productivity App',
      theme: AppTheme.lightTheme, // Use o tema claro definido em AppTheme
      darkTheme: AppTheme.darkTheme, // Use o tema escuro definido em AppTheme
      themeMode: ThemeMode
          .system, // Alternar entre temas claro e escuro com base nas configurações do sistema
      // Definindo as rotas
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/tasks': (context) => TaskTrackingScreen(),
        '/profile': (context) => ProfileScreen(user: user),
      },
    );
  }
}