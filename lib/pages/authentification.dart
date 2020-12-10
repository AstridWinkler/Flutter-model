import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Authentification extends StatefulWidget {
  @override
  _AuthentificationState createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
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
            SizedBox(height: 20.0),
            Center(
              child: Icon(
                Icons.biotech,
                size: 50.0,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text(
                  "Adresse email ou nom \nd'utilisateur",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ]
            ),
            Center(
              child: Container(
                width: 250.0,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[100],
                    hintText: 'AsLuLou@etud-evry.fr',
                    border: OutlineInputBorder(),
                    labelText: 'Email ou utilisateur',
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text(
                  "Mot de passe",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ]
            ),
            Center(
              child: Container(
                width: 250.0,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[100],
                    hintText: 'motDePasseSecret77',
                    border: OutlineInputBorder(),
                    labelText: 'Mot de passe',
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Center(
              child: FlatButton(
                child: Text(
                  'Se connecter',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/compte');
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.teal,
                textColor: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text(
                  "Identifiant ou mot de passe oublié",
                  style: TextStyle(
                    fontSize: 15.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ]
            ),
         ]
        ),
      ),
    );
  }
}
