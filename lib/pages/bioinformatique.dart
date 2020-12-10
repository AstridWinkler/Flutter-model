import 'package:flutter/material.dart';
import 'package:projet_mod/classes/liste2.dart';

class Bioinformatique extends StatefulWidget {
  @override
  _BioinformatiqueState createState() => _BioinformatiqueState();
}

class _BioinformatiqueState extends State<Bioinformatique> {

  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  List<Widget> itemsData = [];

  void getArticlesData() {
    List<dynamic> responseList = ARTICLE_DATA2;
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
                            color: Colors.black54,
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

  void initState() {
    super.initState();
    getArticlesData();
    controller.addListener(() {
      closeTopContainer = controller.offset>100;
    }
    );
  }

    Widget build(BuildContext context) {
      final Size size = MediaQuery
          .of(context)
          .size;
      final double categoryHeight = size.height * 0.21;
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
          color: Colors.blue[50],
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
                SizedBox(height: 10.0),
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 200),
                  opacity: closeTopContainer?0:1,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: size.width,
                    alignment: Alignment.topCenter,
                    height: closeTopContainer?0:categoryHeight,
                    child: Container(
                      child: Column(
                        children: <Widget> [
                          Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.blue[700],
                              radius: 42.0,
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/bioinfo.png'),
                                radius: 40.0,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Bio-informatique',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  letterSpacing: 2.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                        ]
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      controller: controller,
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
