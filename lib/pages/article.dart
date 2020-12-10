import 'package:flutter/material.dart';
import 'package:projet_mod/classes/liste.dart';

class Article extends StatefulWidget {
  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {

  List<Widget> itemsData = [];

  void getArticlesData() {
    List<dynamic> responseList = ARTICLE_DATA;
    List<Widget> listItems = [];
    responseList.forEach((article) {
      listItems.add(
        Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(20.0)
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black54,
                    blurRadius: 10.0
                ),
              ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      article["name"],
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "\ by ${article["author"]}",
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      article["date"],
                      style: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w300
                      ),
                    )
                  ],
                ),
                Image.asset(
                  "assets/${article["image"]}",
                  height: double.infinity,
                )
              ],
            ),
          )
       )
      );
    }
  );
  setState(() {
    itemsData = listItems;
  });
  }

  @override

  void initState(){
    super.initState();
    getArticlesData();
  }

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
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
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
              children:<Widget> [
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
                    Navigator.pushReplacementNamed(context, '/articleA');
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
            SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Publications Récentes',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.teal[600],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: itemsData.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return itemsData[index];
                }
              ),
            ),
          ]
        ),
      ),
    );
  }
}
