import 'package:flutter/material.dart';

class Titre {

  String titre;
  String image; // url image
  String couleur;

  Titre({ this.titre, this.image, this.couleur});

  String getColor(Titre t){
    return t.couleur;
  }

}
