import 'package:flutter/material.dart';
import 'package:projet_mod/classes/categoriesScroller.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final CategoriesScroller categoriesScroller = CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Blog HelloBio",
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: 'IndieFlower',
          ),
        ),
        centerTitle : true,
        backgroundColor: Colors.brown[600],
        leading : Image.asset('assets/hello_bio_logo.png'),
        elevation: 20.0,
      ),
      body: Container(
        color: Colors.amber[50],
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/menu');
                  },
                  color: Colors.teal[100],
                  label: Text(
                      'Menu',
                      style: TextStyle(
                        color: Colors.teal[800],
                        fontSize: 20.0,
                        fontFamily: 'Oswald',
                      ),
                  ),
                  icon: Icon(
                      Icons.menu,
                      color: Colors.teal[800],
                      size: 40.0,
                  ),
                ),
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/connexion');
                  },
                  label: Text('Se connecter'),
                  icon: Icon(
                    Icons.account_circle_outlined,
                  ),
                ),
              ],
            ),
            categoriesScroller,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text(
                  'Accueil',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 30.0),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                    "Bienvenue sur le blog de l'association HelloBio !\n\n"
                    "Nous sommes une association étudiante de l'Université d'Evry Val d'Essonne "
                    "et nous avons créé cette association afin de rendre disponibles et partager "
                    "avec le plus de gens possibles les articles scientifiques sur lesquels "
                    "nous avons travaillés.",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
