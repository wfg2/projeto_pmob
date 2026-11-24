import 'package:flutter/material.dart';
import 'package:projeto/domain/meals.dart';

class FavoriteProvider extends ChangeNotifier {
  List<Meals> favoritos = [];

  addFavorite(Meals meals) {
    favoritos.add(meals);
    notifyListeners();
  }

  isFavorite(Meals meals) {
    for (var fav in favoritos) {
      if (fav.id == meals.id) {
        return true;
      }
    }
    
    return false;
  }
}