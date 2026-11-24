import 'package:flutter/material.dart';
import 'package:projeto/paginas/home_screen.dart';
import 'package:projeto/provider/favorite_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => FavoriteProvider())],
      child: MaterialApp(home: HomePage()),
    )
  );
}
