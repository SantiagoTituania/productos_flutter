import 'package:flutter/material.dart';
import 'package:productos_app/screens/screens.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Productos App',
      initialRoute: 'home',// ruta inicial
      routes: {
        'login'   : ( _ ) => LoginScreen(),
        'home'    : ( _ ) => HomeScreen(),
        'product' : ( _ ) => ProductScreen(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300],
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Color.fromARGB(255, 52, 88, 154)
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.indigo,
          elevation: 0
        )
      ),
    );
  }
}