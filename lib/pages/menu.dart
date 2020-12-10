import 'package:flutter/material.dart';
import 'package:projet_mod/classes/titre.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

List<Titre> titres = [
  Titre(titre: 'Microbiologie', image: 'microbio.png', couleur: 'teal[500]'),
  Titre(titre: 'Génétique', image: 'genetique.png', couleur: 'purple'),
  Titre(titre: 'Biologie Moléculaire', image: 'bio_mol.png', couleur: 'pink[300]'),
  Titre(titre: 'Biochimie', image: 'bioch.png', couleur: 'yellow'),
  Titre(titre: 'Bio-informatique', image: 'bioinfo.png', couleur: 'grey[300]'),
  Titre(titre: 'Biologie Cellulaire', image: 'bio_cell.png', couleur: 'orange'),
];

class _MenuState extends State<Menu> {

  String couleur = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.amber[50],
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton.icon(
                    onPressed: () {},
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
              RaisedButton.icon(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                label: Text(
                  'ACCUEIL',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: Icon(
                  Icons.home,
                ),
                color: Colors.teal[100],
              ),
                RaisedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/article');
                  },
                  label: Text(
                    'ARTICLE',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  icon: Icon(
                    Icons.article,
                  ),
                  color: Colors.teal[100],
                ),
                Container(
                  width: 350.0,
                  height: 385.0,
                  child: ListView.builder(
                      itemCount: titres.length,
                      itemBuilder:(context, index){
                        return Padding(
                          padding: EdgeInsets.fromLTRB(50.0, 4.0, 5.0, 4.0),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/bioinformatique');
                            },
                            color: Colors.white,
                            child: ListTile(
                              title: Text(
                                titres[index].titre,
                              ),
                              leading: CircleAvatar(
                                backgroundImage: AssetImage('assets/${titres[index].image}'),
                              ),
                              //tileColor: couleur,
                              //toStringShort(titres[index].couleur),
                              //getcolor(titres[index]),
                              //titres[index].couleur,
                              //color: Colors.('${titres[index].couleur}'),
                              //couleur = titres[index].couleur;
                            ),
                          ),
                        );
                      }
                  ),
                ),
                RaisedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/compte');
                  },
                  label: Text(
                    'MON COMPTE',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  icon: Icon(
                    Icons.perm_contact_cal_sharp,
                  ),
                  color: Colors.teal[100],
                ),
                RaisedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/contact');
                  },
                  label: Text(
                    'NOUS CONTACTER',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  icon: Icon(
                    Icons.headset_mic_rounded,
                  ),
                  color: Colors.teal[100],
                ),
            ],
          ),
        ),
      ),
    );
  }
}