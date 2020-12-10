import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
                Icons.headset_mic_rounded,
                size: 40.0,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text(
                  'Nous contacter',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Icon(
                  Icons.phone,
                ),
                Text(
                  'Tel : 01 02 03 04 05',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Icon(
                  Icons.email_outlined,
                ),
                Text(
                  ' Email : hellobio@univ-evry.fr',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Icon(
                  Icons.location_pin,
                ),
                Text(
                  ' Bureau 230\n Bâtiment IBGBI\n 23 Boulevard de France\n'
                  ' 91 000 EVRY',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Image.asset('assets/adresse_ibgbi.PNG'),
          ],
        ),
      ),
    );
  }
}
