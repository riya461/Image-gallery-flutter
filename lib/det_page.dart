import 'package:flutter/material.dart';


class DetailsPage extends StatelessWidget {
  final String imagePath;
  final String caption;
  final String photographer;
  final String place;
  final String date;
  final int index;
  DetailsPage(
       this.imagePath,
       this.caption,
      this.photographer,
      this.place,
      this.date,
      this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: 'logo$index',
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Container( color: Colors.black,
              height: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          caption,
                          style: TextStyle(
                            color: Color.fromARGB(255, 241, 195, 249),
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          place,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          date,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'By $photographer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ]
                    
                  )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}