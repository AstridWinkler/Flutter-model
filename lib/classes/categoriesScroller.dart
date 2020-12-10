import 'package:flutter/material.dart';

class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    final double categoryHeight = MediaQuery.of(context).size.height * 0.27 - 50;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Row(
            children: <Widget>[
              Container(
                child: Image.asset('assets/ueve.jpg'),
                width: 180,
                margin: EdgeInsets.only(right: 10),
                height: categoryHeight,
                decoration: BoxDecoration(color: Colors.orange.shade400, borderRadius: BorderRadius.all(Radius.circular(20.0))),
              ),
              Container(
                child: Image.asset('assets/labo.jpg'),
                width: 180,
                margin: EdgeInsets.only(right: 10),
                height: categoryHeight,
                decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.all(Radius.circular(20.0))),
              ),
              Container(
                child: Image.asset('assets/amphi.jpg'),
                width: 180,
                margin: EdgeInsets.only(right: 10),
                height: categoryHeight,
                decoration: BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.all(Radius.circular(20.0))),
              ),
              Container(
                child: Image.asset('assets/nous.jpg'),
                width: 180,
                margin: EdgeInsets.only(right: 10),
                height: categoryHeight,
                decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.all(Radius.circular(20.0))),
              ),
            ],
          ),
        ),
      );
  }
}


