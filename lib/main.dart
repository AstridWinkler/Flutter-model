import 'package:flutter/material.dart';
import 'package:projet_mod/pages/home.dart';
import 'package:projet_mod/pages/menu.dart';
import 'package:projet_mod/pages/connexion.dart';
import 'package:projet_mod/pages/compte.dart';
import 'package:projet_mod/pages/article.dart';
import 'package:projet_mod/pages/authentification.dart';
import 'package:projet_mod/pages/contact.dart';
import 'package:projet_mod/pages/bioinformatique.dart';
import 'package:projet_mod/pages/articleA.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
  '/home': (context) => Home(),
  '/menu': (context) => Menu(),
  '/connexion': (context) => Connexion(),
  '/compte': (context) => Compte(),
  '/article': (context) => Article(),
  '/authentification': (context) => Authentification(),
  '/contact': (context) => Contact(),
  '/bioinformatique': (context) => Bioinformatique(),
  '/articleA': (context) => ArticleA(),
  }
));


