import 'package:flutter/material.dart';

class Connexion extends StatefulWidget {
  @override
  _ConnexionState createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      fontWeight: FontWeight.bold,
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
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text(
                  'Mon compte',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.arrow_right_rounded,
                  size: 50.0,
                  color: Colors.teal[700],
                ),
                Text(
                  'Avez vous déjà un compte ?',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.teal[700],
                    ),
                  ),
                ]
              ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: RaisedButton(
                color: Colors.brown[300],
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/authentification');
                },
                child: Text(
                  "Se connecter",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.arrow_right_rounded,
                    size: 50.0,
                    color: Colors.teal[700],
                  ),
                  Text(
                    'Voulez-vous nous rejoindre ?',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.teal[700],
                    ),
                  ),
                ]
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: RaisedButton(
                color: Colors.brown[300],
                onPressed: () {},
                child: Text(
                  "S'inscrire",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
