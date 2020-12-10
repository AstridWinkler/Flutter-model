import 'package:flutter/material.dart';
import 'package:projet_mod/classes/notification_setting.dart';

class ArticleA extends StatefulWidget {
  @override
  _ArticleAState createState() => _ArticleAState();
}

class _ArticleAState extends State<ArticleA> {

  final notifications = [
    NotificationSetting(title: 'Microbiologie'),
    NotificationSetting(title: 'Génétique'),
    NotificationSetting(title: 'Biologie moléculaire'),
    NotificationSetting(title: 'Biochimie'),
    NotificationSetting(title: 'Bio-informatique'),
    NotificationSetting(title: 'Bio_cellulaire'),
    NotificationSetting(title: 'Médecine'),
    NotificationSetting(title: 'Environnement'),
    NotificationSetting(title: 'Bio-statistique'),
    NotificationSetting(title: 'Développement Durable'),
    NotificationSetting(title: 'Immunologie'),
    NotificationSetting(title: 'Génie génétique'),
    NotificationSetting(title: 'Cancérologie'),
    NotificationSetting(title: 'Agronomie'),
  ];

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
          centerTitle: true,
          backgroundColor: Colors.brown[600],
          leading: Image.asset('assets/hello_bio_logo.png'),
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
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Articles',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  letterSpacing: 2.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.search,
                  size: 35.0,
                ),
                Container(
                  width: 200.0,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      hintText: 'Enter a search term',
                      border: OutlineInputBorder(),
                      labelText: 'Mots clés',
                    ),
                  ),
                ),
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/article');
                  },
                  label: Text(
                    'Plus',
                    style: TextStyle(
                      color: Colors.brown,
                    ),
                  ),
                  icon: Icon(
                    Icons.add_box_outlined,
                    color: Colors.brown,
                  ),
                  color: Colors.amber[50],
                ),
              ]
          ),
          Center(
            child: Container(
              width: 350.0,
              child: Divider(
                height: 20.0,
                color: Colors.brown,
              ),
            ),
          ),
          Container(
            height: 380.0,
            child: ListView(
                children: [
                ...notifications.map(buildSingleCheckbox).toList(),
                ],
            ),
          ),
        ]
       ),
      ),
    );
  }
    Widget buildSingleCheckbox(NotificationSetting notification) => buildCheckbox(
      notification: notification,
      onClicked: (){
        setState(() {
          final newValue = !notification.value;
          notification.value = newValue;
        });
      }
    );

    Widget buildCheckbox({
      @required NotificationSetting notification,
      @required VoidCallback onClicked,
    }) =>
      ListTile(
        onTap: onClicked,
        leading: Checkbox(
          value: notification.value,
          onChanged: (value) => onClicked(),
          activeColor: Colors.teal,
          checkColor: Colors.brown,
        ),
        title: Text(
          notification.title,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
    );
  }
