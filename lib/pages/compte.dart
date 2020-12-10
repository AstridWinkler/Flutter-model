import 'package:flutter/material.dart';

class Compte extends StatefulWidget {
  @override
  _CompteState createState() => _CompteState();
}

class _CompteState extends State<Compte> {
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
                    label: Text('AsLuLou\n'
                        'Se déconnecter'),
                    icon: Icon(
                      Icons.account_circle_outlined,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/thumb.PNG'),
                  radius: 40.0,
                ),
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
                height: 40.0,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.person_pin),
                      title: Text(
                          'Données personnelles',
                          style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.favorite_outline),
                      title: Text(
                          'Articles favoris',
                          style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.comment_outlined),
                      title: Text(
                          'Mes commentaires',
                          style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.article_outlined),
                      title: Text(
                          'Mes articles',
                          style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Center(
                child: FlatButton(
                  child: Text(
                    'Déconnexion',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/connexion');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Colors.teal,
                  textColor: Colors.white,
                ),
              ),
          ]
        ),
      )
    );
  }
}