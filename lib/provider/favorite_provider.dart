import 'package:flutter/material.dart';
import 'package:projeto/domain/meals.dart';

class FavoriteProvider extends ChangeNotifier {
  List<Meals> _favoritos = [];
  List<Meals> get favoritos => _favoritos;


  addFavorite(Meals meals) {
    if (!isFavorite(meals)) {
      _favoritos.add(meals);
    } else {
      removeFavorite(meals);
    }

    notifyListeners();
  }

  removeFavorite(Meals meals) {
    for (int i = 0; i < _favoritos.length; i++) {
      if (_favoritos[i].id == meals.id) {
        _favoritos.removeAt(i);
        break;
      }
    }

  }

  isFavorite(Meals meals) {
    for (var fav in _favoritos) {
      if (fav.id == meals.id) {
        return true;
      }
    }
    
    return false;
  }
}